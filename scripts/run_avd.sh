#!/bin/bash
echo 'Choose Android AVD to cold-boot:'

select avd in $(emulator -list-avds);
do
  if [ -n "$avd" ]
  then
    echo "Cold-booting AVD '$avd'"
    emulator @$avd -no-snapshot-load -writable-system
    break
  else
    echo "Unknown option: '$REPLY'"
  fi
done
