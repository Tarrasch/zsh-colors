local str;
str="$fg[$0]"
if (( $# == 0 ))
then
  str+="$(cat /dev/stdin)"
else
  str+="$@"
fi
str+='%f'
print -P "\${(e)str}"
