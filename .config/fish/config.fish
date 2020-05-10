# pyenv python versions manager
#set -x PYENV_ROOT "$HOME/.pyenv"
#set -x PATH "$PYENV_ROOT/bin:$PATH"
#if command -v pyenv 1>/dev/null 2>&1
#pyenv init - | source
#end

# python 环境管理器
#eval (python -m virtualfish)
#set -x VIRTUALFISH_HOME ~/.local/virtualenvs

#fish_vi_key_bindings
#if status is-interactive
#and not set -q TMUX
#    exec tmux
#end

#set fish_function_path $fish_function_path "/home/onexming/.local/lib/python3.8/site-packages/powerline/bindings/fish" powerline-setup

# fzf
# set -x FZF_DEFAULT_OPTS '--preview "bat --style=numbers --color=always {} | head -500"'
# set -x FZF_DEFAULT_COMMAND 'ag --hidden --ignore .git -g ""'
# set -x FZF_COMPLETION_TRIGGER '**'
# set -x FZF_TMUX_HEIGHT '80%'
# set -x FZF_PREVIEW_COMMAND '--preview "bat --style=numbers --color=always {} | head -500"'


# alias
function sudo
    
    command sudo -E $argv
end

function rm --description 'alias rm=trash-put'
	trash-put  $argv;
end

function rmr --description 'alias rmr=trash-restore'
	trash-restore $argv;
end

function rml
	trash-list $argv;
end

function rmempty
	trash-empty $argv;
end

function sconda
    eval /opt/anaconda/bin/conda "shell.fish" "hook" $argv | source;
    conda activate Alls;
end 

###########################################################################################################
#conda
###########################################################################################################
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
#eval /opt/anaconda/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<
#conda activate Alls
#
#
