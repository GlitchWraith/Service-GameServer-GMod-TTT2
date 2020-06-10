#!/usr/bin/env expect 
set scards [lindex $argv 0]
set collection [lindex $argv 1]
set API [lindex $argv 2]
set timeout -1

spawn $scards -game garrysmod +maxplayers 2 +map gm_flatgrass +gamemode terrortown -console +host_workshop_collection $collection

expect "VAC secure mode is activated." {close}
