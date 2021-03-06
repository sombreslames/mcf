function tp ()
{
  id=`xinput list | grep "Synaptics TouchPad" | grep -oP "(?<=id=)\d+"`
  state=`xinput list-props $id | grep "Device Enabled" | cut -d':' -f2`
  if [ $state -eq 1 ]; then
    echo -e "Switching TouchPad \e[00;31moff\e[00m"
    state=0
  else
    echo -e "Switching TouchPad \e[00;32mon\e[00m"
    state=1
  fi
  sudo xinput set-prop $id "Device Enabled" $state
}
