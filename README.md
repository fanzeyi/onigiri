# onigiri 🍙

A fish prompt theme based one [tomita](https://github.com/daveyarwood/tomita)

> Note: Make sure you're using a Unicode-enabled terminal and font.

## Prompt

    <command status> <abbreviated path> (<current git branch>) [<vi mode>]>

* Last command status
* Working directory
* Current git branch
* vi mode (requires fish 2.2+)

> This theme includes a custom vi mode indicator which is built into `fish_prompt`. If you'd like to use vi mode, I recommend adding the following lines to your config.fish:
>
>     # note: this erases the default fish_mode_prompt, which adds a vi mode
>     # indicator to the left of your prompt
>     function fish_mode_prompt; end
>
>     # turn on vi mode when the shell starts
>     fish_vi_mode
