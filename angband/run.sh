#!/bin/bash

# Runs the borg continuously until interrupted.

# On interrupt, continues the current session
# but does not start a new one.

continue_borg=1

trap "continue_borg=0" SIGINT SIGTERM

while [ $continue_borg == 1 ]; do
	~/angband-3.4.1/src/angband -b
	clear
done

exit 0
