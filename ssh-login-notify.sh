#!/bin/bash

HOST="$(hostname -s)"
DATE="$(date '+%F %T')"

case "$PAM_TYPE" in
    open_session)
        TITLE="$HOST | ssh | login"
        MESSAGE="$PAM_USER logged in (remote host: ${PAM_RHOST:-local})."
        TAGS="login,ssh"
        PRIO="3"
        ;;
    close_session)
        TITLE="$HOST | ssh | logout"
        MESSAGE="$PAM_USER logged out (remote host: ${PAM_RHOST:-local})."
        TAGS="logout,ssh"
        PRIO="2"
        ;;
esac

if [ -n "$MESSAGE" ]; then
    /usr/bin/ntfy-send DEFAULT "$TITLE" "$MESSAGE" --prio="$PRIO" --tags="$TAGS" &
fi
