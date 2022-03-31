if status is-interactive
    # Commands to run in interactive sessions can go here
end

fish_vi_key_bindings

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /opt/miniconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<


# fix clear command
set -g -x TERMINFO /usr/share/terminfo
