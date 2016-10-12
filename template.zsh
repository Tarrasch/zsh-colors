printf %s "$fg[$0]"

if (( $# == 0 ))
then
  cat
else
  # printf doesn't print the trailing newline, but print does
  print "$@"
fi
printf %s "$reset_color"
