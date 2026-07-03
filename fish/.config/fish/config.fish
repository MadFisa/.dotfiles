# Near the top of ~/.config/fish/config.fish
# Make things work with emacs tramp
if test "$TERM" = "dumb"
    function fish_prompt
        echo '$ '
    end
    function fish_right_prompt; end
    function fish_greeting; end
end

if status is-interactive
    # Commands to run in interactive sessions can go here
end

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/asif/mambaforge/bin/conda
    eval /home/asif/mambaforge/bin/conda "shell.fish" "hook" $argv | source
end

if test -f "/home/asif/mambaforge/etc/fish/conf.d/mamba.fish"
    source "/home/asif/mambaforge/etc/fish/conf.d/mamba.fish"
end
# <<< conda initialize <<<

# remapping ls  to lsd
alias ls "lsd"

# remapping lf to lfcd
alias lf "lfcd"

direnv hook fish | source
