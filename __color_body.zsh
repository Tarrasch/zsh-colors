local str="\$fg[\$0]$(zsh_colors_determine_input $#)%f"
print -P "\${(e)str}"
