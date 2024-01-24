#!/bin/false

# This file will be sourced in init.sh

# https://raw.githubusercontent.com/ai-dock/comfyui/main/config/provisioning/default.sh


NODES=(
    "https://github.com/ltdrdata/ComfyUI-Manager"
    "https://github.com/ltdrdata/ComfyUI-Impact-Pack"
    "https://github.com/TinyTerra/ComfyUI_tinyterraNodes"
    "https://github.com/Kosinkadink/ComfyUI-Advanced-ControlNet"
    "https://github.com/ltdrdata/ComfyUI-Inspire-Pack"
    "https://github.com/shingo1228/ComfyUI-SDXL-EmptyLatentImage"
    "https://github.com/rgthree/rgthree-comfy"
    "https://github.com/WASasquatch/was-node-suite-comfyui"
    "https://github.com/wallish77/wlsh_nodes"
    "https://github.com/TinyTerra/ComfyUI_tinyterraNodes"
    "https://github.com/Suzie1/ComfyUI_Comfyroll_CustomNodes"
    "https://github.com/chrisgoringe/cg-use-everywhere"
    "https://github.com/twri/sdxl_prompt_styler"
    "https://github.com/Fannovel16/comfyui_controlnet_aux"
)

CHECKPOINT_MODELS=(
    # Turbovision
    "https://civitai.com/api/download/models/273102?type=Model&format=SafeTensor&size=pruned&fp=fp16"
    # RMSDXL - Hybrid Turbo
    # "https://civitai.com/api/download/models/236754"
    # RealitiesEdge
    # "https://civitai.com/api/download/models/129666"
    # Hyperreal Surrealist 
    # "https://civitai.com/api/download/models/280950?type=Model&format=SafeTensor&size=pruned&fp=fp16"
    # Wifgen
    # "https://civitai.com/api/download/models/235861"
    # fitCorder
    # "https://civitai.com/api/download/models/272693?type=Model&format=SafeTensor&size=pruned&fp=fp16"
    # -- other sdxl, but non turbo --
    # Albedo XL
    "https://civitai.com/api/download/models/281176?type=Model&format=SafeTensor&size=pruned&fp=fp16"
    

)

VAE_MODELS=(
    # "https://huggingface.co/stabilityai/sd-vae-ft-ema-original/resolve/main/vae-ft-ema-560000-ema-pruned.safetensors"
    # "https://huggingface.co/stabilityai/sd-vae-ft-mse-original/resolve/main/vae-ft-mse-840000-ema-pruned.safetensors"
    # "https://huggingface.co/stabilityai/sdxl-vae/resolve/main/sdxl_vae.safetensors"
)

ESRGAN_MODELS=(
    "https://huggingface.co/ai-forever/Real-ESRGAN/resolve/main/RealESRGAN_x4.pth"
    "https://huggingface.co/FacehugmanIII/4x_foolhardy_Remacri/resolve/main/4x_foolhardy_Remacri.pth"
    "https://huggingface.co/Akumetsu971/SD_Anime_Futuristic_Armor/resolve/main/4x_NMKD-Siax_200k.pth"
)

CONTROLNET_MODELS=(
    "https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_canny-fp16.safetensors"
    "https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_depth-fp16.safetensors"
    "https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_openpose-fp16.safetensors"
    #"https://huggingface.co/kohya-ss/ControlNet-diff-modules/resolve/main/diff_control_sd15_depth_fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_hed-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_mlsd-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_normal-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_scribble-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/control_seg-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_canny-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_color-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_depth-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_keypose-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_openpose-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_seg-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_sketch-fp16.safetensors"
    #"https://huggingface.co/webui/ControlNet-modules-safetensors/resolve/main/t2iadapter_style-fp16.safetensors"
)

LORA_MODELS=(
    # --- styles ---
    # dissolve
    # "https://civitai.com/api/download/models/277389?type=Model&format=SafeTensor"
    # # geometry - penrose
    # "https://civitai.com/api/download/models/304851?type=Model&format=SafeTensor"
    # # geometry - fractal
    # "https://civitai.com/api/download/models/303921?type=Model&format=SafeTensor"
    # # bismuth
    # "https://civitai.com/api/download/models/255200?type=Model&format=SafeTensor"
    # # opal
    # "https://civitai.com/api/download/models/253808?type=Model&format=SafeTensor"
    # # motor oil
    # "https://civitai.com/api/download/models/293577?type=Model&format=SafeTensor"
    # # oil spill
    # "https://civitai.com/api/download/models/269838?type=Model&format=SafeTensor"
    # # LED
    # "https://civitai.com/api/download/models/295111?type=Model&format=SafeTensor"
    # # melting
    # "https://civitai.com/api/download/models/277422?type=Model&format=SafeTensor"
    # # electricity
    # "https://civitai.com/api/download/models/301123?type=Model&format=SafeTensor"
    # # neon 
    # "https://civitai.com/api/download/models/304304?type=Model&format=SafeTensor"
    # # elf fantasy
    # "https://civitai.com/api/download/models/276913?type=Model&format=SafeTensor"
    # # psychedeclic
    # "https://civitai.com/api/download/models/292517?type=Model&format=SafeTensor"
    # # neon cyberpunk
    # "https://civitai.com/api/download/models/303470?type=Model&format=SafeTensor"
    # # fireworks
    # "https://civitai.com/api/download/models/273447?type=Model&format=SafeTensor"
    # # waterdrops
    # "https://civitai.com/api/download/models/293321?type=Model&format=SafeTensor"
    # # dripping
    # "https://civitai.com/api/download/models/287679?type=Model&format=SafeTensor"
    # # mercury
    # "https://civitai.com/api/download/models/303517?type=Model&format=SafeTensor"
    # # inner light
    # "https://civitai.com/api/download/models/308228?type=Model&format=SafeTensor"
    # # dark matter
    # "https://civitai.com/api/download/models/309059?type=Model&format=SafeTensor"
    # # sunlight
    # "https://civitai.com/api/download/models/307871?type=Model&format=SafeTensor"
    # # geisha
    # "https://civitai.com/api/download/models/291881?type=Model&format=SafeTensor"
    # # pink emo
    # "https://civitai.com/api/download/models/294521?type=Model&format=SafeTensor"
    # # xeno organic
    # "https://civitai.com/api/download/models/307384?type=Model&format=SafeTensor"
    # # feline craft
    # "https://civitai.com/api/download/models/296851?type=Model&format=SafeTensor"
    # bioluminescent
    # "https://civitai.com/api/download/models/277457?type=Model&format=SafeTensor"
    # Pollock 
    # "https://civitai.com/api/download/models/305075?type=Model&format=SafeTensor"
   
    # -- tools --
    # RMSDXL Photo
    # "https://civitai.com/api/download/models/282532?type=Model&format=SafeTensor"
    # RMSDXL Enhance
    # "https://civitai.com/api/download/models/268857?type=Model&format=SafeTensor"
    # RMSDXL Creative
    # "https://civitai.com/api/download/models/272849?type=Model&format=SafeTensor"
    # RMSDXL Darkness Cinema
    ""

    # -- ns --
    # tjb
    "https://civitai.com/api/download/models/293321?type=Model&format=SafeTensor"
    "https://civitai.com/api/download/models/295606?type=Model&format=SafeTensor"
    # doyoulikemybum
    "https://civitai.com/api/download/models/293901?type=Model&format=SafeTensor"
    # frombelow
    "https://civitai.com/api/download/models/302319?type=Model&format=SafeTensor"
    # godpus
    "https://civitai.com/api/download/models/292193?type=Model&format=SafeTensor"
    # leash
    "https://civitai.com/api/download/models/282890?type=Model&format=SafeTensor"
    # dep
    "https://civitai.com/api/download/models/309802?type=Model&format=SafeTensor"
    # quirontop
    "https://civitai.com/api/download/models/145250?type=Model&format=SafeTensor"
    # blojo
    "https://civitai.com/api/download/models/135068?type=Model&format=SafeTensor"
    # allinone
    "https://civitai.com/api/download/models/160240?type=Model&format=SafeTensor"
    # 
    "https://civitai.com/api/download/models/131240?type=Model&format=SafeTensor"


    # -- effects --
    # sweat
    "https://civitai.com/api/download/models/302404?type=Model&format=SafeTensor"

    # -- peep --
    # liya
    "https://civitai.com/api/download/models/130412?type=Model&format=SafeTensor"
    # shanwilke
    "https://civitai.com/api/download/models/276046?type=Model&format=SafeTensor"
    # abcorn = ohwx
    "https://civitai.com/api/download/models/138169?type=Model&format=SafeTensor"
    # krystal_boyd
    "https://civitai.com/api/download/models/307799?type=Model&format=SafeTensor"
    # dichen lachman
    "https://civitai.com/api/download/models/246515?type=Model&format=SafeTensor"
    # chrishend
    # "https://civitai.com/api/download/models/281634?type=Model&format=SafeTensor"
    # alex4d4dd
    "https://civitai.com/api/download/models/130565?type=Model&format=SafeTensor"
    # mfox
    "https://civitai.com/api/download/models/135386?type=Model&format=SafeTensor"
    "https://civitai.com/api/download/models/138155?type=Model&format=SafeTensor"
    # sylvia
    "https://civitai.com/api/download/models/297526?type=Model&format=SafeTensor"
    # mila
    # "https://civitai.com/api/download/models/281744?type=Model&format=SafeTensor"
    # jalba
    # "https://civitai.com/api/download/models/289324?type=Model&format=SafeTensor"
    # hotemma
    "https://civitai.com/api/download/models/288200?type=Model&format=SafeTensor"
    # stella 
    "https://civitai.com/api/download/models/302210?type=Model&format=SafeTensor"
    # nella
    "https://civitai.com/api/download/models/302338?type=Model&format=SafeTensor"
    # elena
    "https://civitai.com/api/download/models/300915?type=Model&format=SafeTensor"
    # amber heard
    "https://civitai.com/api/download/models/302699?type=Model&format=SafeTensor"
    # christinich/micu
    "https://civitai.com/api/download/models/302433?type=Model&format=SafeTensor"
    # piep
    "https://civitai.com/api/download/models/273504?type=Model&format=SafeTensor"
    # grande
    "https://civitai.com/api/download/models/281438?type=Model&format=SafeTensor"
    # nicola_cavanis woman
    "https://civitai.com/api/download/models/284398?type=Model&format=SafeTensor"
    # kmcgraf
    "https://civitai.com/api/download/models/298811?type=Model&format=SafeTensor"
    # halle
    "https://civitai.com/api/download/models/308097?type=Model&format=SafeTensor"
    # rachel folkman
    "https://civitai.com/api/download/models/282167?type=Model&format=SafeTensor"
    # eva mendes woman
    "https://civitai.com/api/download/models/303424?type=Model&format=SafeTensor"
    # cndcswnpl woman
    "https://civitai.com/api/download/models/297955?type=Model&format=SafeTensor"
    # alibunzy_model
    "https://civitai.com/api/download/models/279099?type=Model&format=SafeTensor"
    # virg
    "https://civitai.com/api/download/models/282386?type=Model&format=SafeTensor"
    # inna 
    "https://civitai.com/api/download/models/307312?type=Model&format=SafeTensor"
    # yuliya snigir woman
    "https://civitai.com/api/download/models/299678?type=Model&format=SafeTensor"
    # ariel tatum
    "https://civitai.com/api/download/models/294419?type=Model&format=SafeTensor"
    # grabriella_goumas_model
    "https://civitai.com/models/256384/gabrielle-goumas?modelVersionId=289057"
    # anaxx
    "https://civitai.com/api/download/models/308749?type=Model&format=SafeTensor"
    # nikita mirzani
    "https://civitai.com/api/download/models/294486?type=Model&format=SafeTensor"
    # ashleyschultz
    "https://civitai.com/api/download/models/298982?type=Model&format=SafeTensor"
    # maja strojek - ohwxms woman
    "https://civitai.com/api/download/models/297950?type=Model&format=SafeTensor"

    

    
)

### DO NOT EDIT BELOW HERE UNLESS YOU KNOW WHAT YOU ARE DOING ###

function prov_start() {
    DISK_GB_AVAILABLE=$(($(df --output=avail -m "${WORKSPACE}" | tail -n1) / 1000))
    DISK_GB_USED=$(($(df --output=used -m "${WORKSPACE}" | tail -n1) / 1000))
    DISK_GB_ALLOCATED=$(($DISK_GB_AVAILABLE + $DISK_GB_USED))
    prov_print_header
    prov_get_nodes
    prov_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/ckpt" \
        "${CHECKPOINT_MODELS[@]}"
    prov_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/lora" \
        "${LORA_MODELS[@]}"
    prov_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/controlnet" \
        "${CONTROLNET_MODELS[@]}"
    prov_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/vae" \
        "${VAE_MODELS[@]}"
    prov_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/esrgan" \
        "${ESRGAN_MODELS[@]}"
    prov_print_end
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

function prov_get_nodes() {
    for repo in "${NODES[@]}"; do
        dir="${repo##*/}"
        path="/opt/ComfyUI/custom_nodes/${dir}"
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


function prov_print_header() {
    printf "\n##############################################\n#                                            #\n#          Provisioning container            #\n#                                            #\n#         This will take some time           #\n#                                            #\n# Your container will be ready on completion #\n#                                            #\n##############################################\n\n"
    if [[ $DISK_GB_ALLOCATED -lt $DISK_GB_REQUIRED ]]; then
        printf "WARNING: Your allocated disk size (%sGB) is below the recommended %sGB - Some models will not be downloaded\n" "$DISK_GB_ALLOCATED" "$DISK_GB_REQUIRED"
    fi
}

function prov_print_end() {
    printf "\nProvisioning complete:  Web UI will start now\n\n"
}

# Download from $1 URL to $2 file path
function prov_download() {
    wget -qnc --content-disposition --nsfw --show-progress -e dotbytes="${3:-4M}" -P "$2" "$1"
}

prov_start
