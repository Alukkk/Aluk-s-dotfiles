#!/bin/bash
options="Shutdown\nReboot\nLogout\nSuspend\nHibernate\nLock\nExit"
chosen=$(echo -e "$options" | fuzzel --dmenu --prompt "Power Menu " --width 25 --lines 6)

case $chosen in
  "Shutdown") systemctl poweroff ;;
  "Reboot")   systemctl reboot ;;
  "Logout")   mmsg -q ;;
  "Suspend")  systemctl suspend ;;
  "Hibernate") systemctl hibernate ;;
  "Exit")     exit 0 ;;
  *)          exit 1 ;;
esac
