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

if test "$TERM" = "dumb"
    # Remove Tide's prompt functions
    functions -e fish_prompt
    functions -e fish_right_prompt

    # Define a basic fallback prompt:
    function fish_prompt
        # # Show user@host, current directory, and a > symbol (in green)
        echo "\$ "
        # printf '%s@%s %s%s%s $ ' $USER (hostname | cut -d . -f 1) \
        #     (set_color green) (prompt_pwd) (set_color normal)
    end

    # Optional: define a basic right prompt, or leave it empty
    # function fish_right_prompt
    #     # echo empty, or you could add minimal info like time:
    #     # date '+%H:%M'
    # end
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
