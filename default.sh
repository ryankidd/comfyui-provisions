#!/bin/false

# This file will be sourced in init.sh

# https://raw.githubusercontent.com/ai-dock/comfyui/main/config/prov/default.sh

NODES=(
    "https://github.com/ltdrdata/ComfyUI-Manager"       
    "https://github.com/chrisgoringe/cg-image-picker"
    "https://github.com/chrisgoringe/cg-quicknodes"
    "https://github.com/chrisgoringe/cg-use-everywhere"
    "https://github.com/ltdrdata/ComfyUI-Impact-Pack"
    "https://github.com/ltdrdata/ComfyUI-Inspire-Pack"
    "https://github.com/pythongosssss/ComfyUI-Custom-Scripts"
    "https://github.com/rgthree/rgthree-comfy"
    "https://github.com/shingo1228/ComfyUI-SDXL-EmptyLatentImage"
    "https://github.com/Suzie1/ComfyUI_Comfyroll_CustomNodes"
    "https://github.com/twri/sdxl_prompt_styler"
    "https://github.com/wallish77/wlsh_nodes"
    "https://github.com/WASasquatch/was-node-suite-comfyui"
    "https://github.com/bash-j/mikey_nodes"
    "https://github.com/SLAPaper/ComfyUI-Image-Selector"
    "https://github.com/jags111/efficiency-nodes-comfyui"
    "https://github.com/BadCafeCode/masquerade-nodes-comfyui"
    "https://github.com/whmc76/ComfyUI-Openpose-Editor-Plus"
    "https://github.com/cubiq/ComfyUI_essentials"     
    "https://github.com/kijai/ComfyUI-Marigold"
    "https://github.com/Kosinkadink/ComfyUI-Advanced-ControlNet"
    "https://github.com/Fannovel16/comfyui_controlnet_aux"
    "https://github.com/cubiq/ComfyUI_IPAdapter_plus"
    "https://github.com/crystian/ComfyUI-Crystools"

)

function prov_start() {
    DISK_GB_AVAILABLE=$(($(df --output=avail -m "${WORKSPACE}" | tail -n1) / 1000))
    DISK_GB_USED=$(($(df --output=used -m "${WORKSPACE}" | tail -n1) / 1000))
    DISK_GB_ALLOCATED=$(($DISK_GB_AVAILABLE + $DISK_GB_USED))
    prov_print_header
    prov_get_nodes     
    prov_print_end
}

function prov_get_nodes() {
    mkdir "${WORKSPACE}storage/custom_nodes"

    for repo in "${NODES[@]}"; do
        dir="${repo##*/}"
        path="${WORKSPACE}storage/custom_nodes/${dir}"
        requirements="${path}/requirements.txt"
        if [[ -d $path ]]; then
            if [[ ${AUTO_UPDATE,,} != "false" ]]; then
                printf "Updating node: %s...\n" "${repo}"
                ( cd "$path" && git pull )
                if [[ -e $requirements ]]; then
                    micromamba -n comfyui run ${PIP_INSTALL} -r "$requirements"
                fi
            fi
        else
            printf "Downloading node: %s...\n" "${repo}"
            git clone "${repo}" "${path}" --recursive
            if [[ -e $requirements ]]; then
                micromamba -n comfyui run ${PIP_INSTALL} -r "${requirements}"
            fi
        fi
    done
}

function prov_get_models() {
    if [[ -z $2 ]]; then return 1; fi
    dir="$1"
    mkdir -p "$dir"
    shift
    if [[ $DISK_GB_ALLOCATED -ge $DISK_GB_REQUIRED ]]; then
        arr=("$@")
    else
        printf "WARNING: Low disk space allocation - Only the first model will be downloaded!\n"
        arr=("$1")
    fi
    
    printf "Downloading %s model(s) to %s...\n" "${#arr[@]}" "$dir"
    for url in "${arr[@]}"; do
        printf "Downloading: %s\n" "${url}"
        prov_download "${url}" "${dir}"
        printf "\n"
    done
}

function prov_print_header() {
    printf "\n##############################################\n#                                            #\n#          prov container            #\n#                                            #\n#         This will take some time           #\n#                                            #\n# Your container will be ready on completion #\n#                                            #\n##############################################\n\n"
    if [[ $DISK_GB_ALLOCATED -lt $DISK_GB_REQUIRED ]]; then
        printf "WARNING: Your allocated disk size (%sGB) is below the recommended %sGB - Some models will not be downloaded\n" "$DISK_GB_ALLOCATED" "$DISK_GB_REQUIRED"
    fi
}

function prov_print_end() {
    printf "\nprov complete:  Web UI will start now\n\n"
}

# Download from $1 URL to $2 file path
function prov_download() {
    wget -qnc --content-disposition --show-progress -P "$2" "$1"
}

prov_start