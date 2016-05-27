function fish_prompt
  if [ (whoami) = "root" ]
    set_color normal
    echo -n (whoami)'@'(hostname)' '
    set_color red
    echo -n (prompt_pwd)
    set_color normal
    #echo -n ' λ '
    printf '\nλ '
  end
  if [ (whoami) = "dusan" ]
    set_color normal
    echo -n (whoami)'@'(hostname)' '
    set_color $fish_color_cwd
    echo -n (prompt_pwd)
    set_color normal
    #echo -n ' λ '
    printf '\nλ '
  end
end
