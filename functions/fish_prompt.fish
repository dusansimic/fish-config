function fish_prompt
  if [ (whoami) = "root" ]
    set_color normal
    printf '\u250C'(whoami)'@'(hostname)' '
    set_color red
    printf (prompt_pwd)
    set_color normal
    #echo -n ' λ '
    printf '\n\u2514λ '
  end
  if [ (whoami) = "dusan" ]
    set_color normal
    printf '\u250C'(whoami)'@'(hostname)' '
    set_color $fish_color_cwd
    printf (prompt_pwd)
    set_color normal
    #echo -n ' λ '
    printf '\n\u2514λ '
  end
end
