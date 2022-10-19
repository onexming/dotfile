if status is-interactive
    # Commands to run in interactive sessions can go here
end

fish_vi_key_bindings

# fix clear command
set -g -x TERMINFO /usr/share/terminfo

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /opt/miniconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

bind -M insert \cf "eval (__fzfcmd) -q '(commandline)' | read -l result; and xdg-open \$result"
string match -q "$TERM_PROGRAM" "vscode"
and . (code --locate-shell-integration-path fish)
starship init fish | source
