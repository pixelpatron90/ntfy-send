#!/bin/bash
USER=maralex_sys_user
PASSWORD=zh9mgnySzzzztrrvvhshtt544445

SERVER="https://ntfy.maralex.xyz"
DEFAULT_TOPIC="srv01_maralex_xyz_notifications"PRIORITY
PRIORITY=""
TcaseIONAL=()

while [[ $# -gt 0 ]]; do
  case "$1" in
    --prio=*)
      PRIORITY="${1#--prio=}"
      shift
      ;;
    --tags=*)
      TAGS="${1#--tags=}"
      shift
      ;;
    -h)
      echo "Usage: $(basename $0) [topic|DEFAULT] [title] \"message\" [--prio=1-5] [--tags=a,b]"
      exit 0
      ;;
    *)
      POSITIONAL+=("$1")
      shift
      ;;
  esac
done

set -- "${POSITIONAL[@]}"

if [ "$#" -lt 1 ]; then
  echo "You need at least a message."
  exit 1
fi
HOSTNAME="$(hostname)"
case "$#" in
  1)
    TOPIC="$DEFAULT_TOPIC"
    TITLE="$HOSTNAME"
    MESSAGE="$1"
    ;;
  2)
    if [[ "${1^^}" == "DEFAULT" ]]; then
      TOPIC="$DEFAULT_TOPIC"
      TITLE="$HOSTNAME"
      MESSAGE="$2"
    else
      TOPIC="$1"
      TITLE="$HOSTNAME"
      MESSAGE="$2"
    fi
    ;;
  3)
    if [[ "${1^^}" == "DEFAULT" ]]; then
      TOPIC="$DEFAULT_TOPIC"
      TITLE="$2"
      MESSAGE="$3"
    else
      TOPIC="$1"
      TITLE="$2"
      MESSAGE="$3"
    fi
    ;;
  *)
    echo "Too many arguments."
    exit 1
    ;;
esac
# Header vorbereiten
CURL_HEADERS=()
CURL_HEADERS+=(-H "Title: $TITLE")
if [ -n "$PRIORITY" ]; then
  CURL_HEADERS+=(-H "X-Priority: $PRIORITY")
fi
if [ -n "$TAGS" ]; then
  CURL_HEADERS+=(-H "X-Tags: $TAGS")
fi
curl "${CURL_HEADERS[@]}" \
     -u "$USER:$PASSWORD" \
     -d "$MESSAGE" \
     "$SERVER/$TOPIC" \
     > /dev/null 2>&1
