function fish_prompt
  if [ (whoami) = "root" ]
    set_color normal
    #printf (whoami)'@'(hostname)' '
    printf 'root '
    set_color red
    printf (prompt_pwd)
    set_color normal
    #printf ' →  '
    #printf ' \u2192 '
    #printf ' \u25B7 '
    #printf ' λ '
    printf ' # '
  end
  if [ (whoami) = "dusan" ]
    set_color normal
    #printf (whoami)'@'(hostname)' '
    #printf 'ドゥシャン ' #@'(hostname)' '
    printf '杜尚 '
    set_color $fish_color_cwd
    #printf (basename $PWD) "><> "
    printf (prompt_pwd)
    set_color normal
    #printf ' →  '
    #printf ' \u2192 ' #tanka strelica
    #printf ' \u25B7 ' #trougao
    #printf ' λ '
    #printf ' $ '
    printf ' \u279E  ' #debela strelica
  end
end
