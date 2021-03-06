# figure out whether we are online or not
online ()
{
  ping -c1 8.8.8.8 >/dev/null
  if [ $? -ne 0 ] ; then
    echo -e "\e[00;31mFailed to ping Google DNS\e[00m"
    return 1
  fi
  ping -c1 173.194.112.70 >/dev/null
  if [ $? -ne 0 ] ; then
    echo -e "\e[00;31mFailed to ping Google website by IP address\e[00m"
    return 1
  fi
  ping -c1 google.com >/dev/null
  if [ $? -ne 0 ] ; then
    echo -e "\e[00;31mFailed to ping Google website by name\e[00m"
    return 1
  fi
  echo -e "Seems like we are \e[00;32monline\e[00m"
  return 0
}
