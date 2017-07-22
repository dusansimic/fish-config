function fish_prompt
	set -l git_branch (git branch ^/dev/null | sed -n '/\* /s///p')
  if [ (whoami) = "root" ]
    set_color normal
    printf (whoami)'@'(hostname)' '
    set_color red
    printf (prompt_pwd)
		if [ $git_branch ]
		  set_color yellow
		  printf ' ('"$git_branch"')'
    end
    set_color normal
    printf ' λ '
  else
    set_color normal
    printf (whoami)'@'(hostname)' '
    set_color $fish_color_cwd
    #printf (basename $PWD) "><> "
    printf (prompt_pwd)
    if [ $git_branch ]
		  set_color yellow
		  printf ' ('"$git_branch"')'
    end
    set_color normal
    printf ' λ '
  end
end
