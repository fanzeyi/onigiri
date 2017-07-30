set normal (set_color normal)
set magenta (set_color magenta)
set yellow (set_color yellow)
set green (set_color green)
set red (set_color red)
set gray (set_color -o black)

set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showcolorhints 'yes'
set __fish_git_prompt_color_branch yellow

function show_command_status
    set last_status $argv[1]

    if test $last_status -eq 0
        printf '🍙  '
    else
        printf '🍘  '
    end
end

function show_pwd
    set_color $fish_color_cwd
    printf '%s' (prompt_pwd)
end

function show_git_prompt
    set_color normal
    printf '%s ' (__fish_git_prompt)
end

function show_vim_mode
    set_color normal
    printf '['
    switch $fish_bind_mode
      case default
        set_color --bold red
        printf 'n'
      case insert
        set_color --bold green
        printf 'i'
      case visual
        set_color --bold magenta
        printf 'v'
    end
    set_color normal
    printf '] '
end

function show_prompt
    set_color -o yellow
    printf '> '
    set_color normal
end

function fish_prompt
    set last_status $status

    echo
    show_command_status $last_status
    show_pwd
    show_git_prompt
    show_vim_mode
    show_prompt
end

