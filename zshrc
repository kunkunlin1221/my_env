if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p11k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# export PYENV_ROOT="$HOME/.pyenv"
# command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init -)"
# eval "$(pyenv virtualenv-init -)"

alias gpu-monitor="watch -n 0.5 nvidia-smi"
alias disk-size-monitor="watch -n 0.5 df -lh"
alias disk-size-monitor-clear="watch -n 0.5 df -lh -x squashfs -x tmpfs -x devtmpfs"
alias disk-io-monitor="iostat -md 1 /dev/sd* /dev/nvme*"

# python settings
export PYTHONDONTWRITEBYTECODE=1
export PYENV_VIRTUALENV_DISABLE_PROMPT=1

# export PATH=/usr/local/cuda-12.4/bin:/usr/local/cuda-12.1/bin:/usr/local/cuda-11.8/bin:/usr/local/cuda-11.6/bin${PATH:+:${PATH}}
# export LD_LIBRARY_PATH=/usr/local/cuda-12.4/lib64:/usr/local/cuda-12.1/lib64:/usr/local/cuda-11.8/lib64:/usr/local/cuad-11.6/lib64{LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}

export NODE_OPTIONS="--max-old-space-size=8192"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/jovyan/shared/pp/venv/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/jovyan/shared/pp/venv/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/jovyan/shared/pp/venv/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/jovyan/shared/pp/venv/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<