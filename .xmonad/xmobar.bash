# Collection of bash helper functions to create indicators for Xmobar panel

StartIndicator ()
{
  eval "__output=' '"
}

Color ()
{
  if [ "$__output" != " " ] ; then
    if [[ $# -gt 1 ]] ; then
      eval "__output='<fc=$1,$2>$__output</fc>'"
    else
      eval "__output='<fc=$1>$__output</fc>'"
    fi
  fi
}

# Surround the segment with a clickable area
# Arguments:
#   1 Mouse button
#   2 Command
# Example:
#   Action 1 "keyboard -n"
Action ()
{
  if [ "$__output" != " " ] ; then
    eval "__output='<action=\`${2}\` button=${1}>$__output</action>'"
  fi
}

# Append icon
# Arguments:
#   1 Icon name (without .xbm extension)
# Example:
#   Icon "mail"
Icon ()
{
  eval "__output='$__output<icon=/home/sergey/.xmonad/icons/${1}.xbm/> '"
}

Symbol ()
{
  declare -A symbols
  symbols["wifi"]=
  symbols+=( ["planet"]= ["shield"]= ["mute"]= ["volume"]=)
  eval "__output='$__output${symbols[${1}]} '"
}

Add ()
{
  # Escape single quote with triple hat
  eval "__output='$__output${1//\'/^^^} '"
}

FlushIndicator ()
{
  if [ "$__output" != " " ] ; then
    # Undo triple hat escape
    echo -n "${__output//^^^/\'}"
  fi
}
