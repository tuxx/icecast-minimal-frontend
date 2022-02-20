#!/bin/bash
#
# Example cron line:
# */1 *   *   *   *    /path/to/your/cron.sh
#

OUTPUT=/path/to/your/current.txt
SONG=$(mpc current)
if [[ -z "$SONG" ]]; then
        echo "Currently offline." > $OUTPUT
else
        echo $SONG > $OUTPUT
fi
