# Content based a bit on this nice documentation:
#
# https://wiki.archlinux.org/index.php/Zsh
#
# You can also debug this library with `whence -f red`

zsh_colors_determine_input () {
  (( $1 == 0 )) && echo '$(cat /dev/stdin)' || echo '$@'
}

colors=( black red green yellow blue magenta cyan white )
metaName="$(dirname $0)/__color_body.zsh"
for color in $colors
do
  eval "$color () { 
    $(cat $metaName)  
  }"
done
