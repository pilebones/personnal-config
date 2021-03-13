#! /bin/bash

# Add: "session    optional     pam_exec.so /root/scripts/pam-notifier.sh"
# At the end of the following files: /etc/pam.d/common-session and /etc/pam.d/sudo

# Uncomment below if you want only login event
# if [ ! "$PAM_TYPE" = "open_session" ]; then
# 	exit 0
# fi
{
  echo "User: $PAM_USER"
  echo "Remote user: $PAM_RUSER"
  echo "Remote host: $PAM_RHOST"
  echo "Service: $PAM_SERVICE"
  echo "TTY: $PAM_TTY"
  echo "Type : $PAM_TYPE"
  echo "Date: `date`"
  echo "Server: `uname -a`"
} | mail -s "`hostname -s` $PAM_SERVICE login: $PAM_USER" myemailadress@domain.com

exit 0
