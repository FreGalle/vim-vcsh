" Source: https://github.com/DarkWiiPlayer/darkrc
"

if $TERM=="xterm-kitty"
  function! s:kitty_bg_color()
      let l:num_color=synIDattr(hlID("Normal"), "bg")
      if l:num_color!=""
        " Original code used to transform a color number into the hex color
        " let l:color=system("kitty @ get-colors | grep 'color".l:num_color." '")
        " let l:color=l:color[match(l:color, "#"):]
        echom system("kitty @ set-colors --match id:$KITTY_WINDOW_ID background=".l:num_color)
      end
  endfun

  function! s:kitty_bg_color_reset()
    let l:kitty_theme = $HOME."/.config/kitty/current-theme.conf"
    echom system("grep '^background ' ".l:kitty_theme." | tr -s ' ' = | xargs kitty @ set-colors --match id:$KITTY_WINDOW_ID")
  endfun

  augroup kitty
    au ColorScheme * call <SID>kitty_bg_color()
    au FocusGained * call <SID>kitty_bg_color()
    au VimEnter    * call <SID>kitty_bg_color()
    au VimResume   * call <SID>kitty_bg_color()
    au FocusLost   * call <SID>kitty_bg_color_reset()
    au VimSuspend  * call <SID>kitty_bg_color_reset()
    au VimLeavePre * call <SID>kitty_bg_color_reset()
  augroup END
end
