#!/usr/bin/env bash

if [ ! ${AUTOSTART_FILE} ]; then
    AUTOSTART_FILE='.autostart'
fi

function set_shell_autostart {
    if [ -f ${AUTOSTART_FILE} ]; then
        source ${AUTOSTART_FILE}
    fi
}

function shell_autostart_install {
  if [ -z "$PROMPT_COMMAND" ]; then
    PROMPT_COMMAND=set_shell_autostart
  else
    PROMPT_COMMAND=${PROMPT_COMMAND%% }; # remove trailing spaces
    PROMPT_COMMAND=${PROMPT_COMMAND%\;}; # remove trailing semi-colon

    local new_entry="set_shell_autostart"
    case ";$PROMPT_COMMAND;" in
      *";$new_entry;"*)
        # echo "PROMPT_COMMAND already contains: $new_entry"
        :;;
      *)
        PROMPT_COMMAND="$PROMPT_COMMAND;$new_entry"
        # echo "PROMPT_COMMAND does not contain: $new_entry"
        ;;
    esac
  fi
}

shell_autostart_install
