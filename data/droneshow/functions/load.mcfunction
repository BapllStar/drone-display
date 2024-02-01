tellraw @a {"text":"Drone Show has been reloaded","color":"aqua"}

# Kill the previous blocks
function droneshow:kill_block_displays

# Summon important stuff
function droneshow:summon/master

# Scoreboard shenanigans
function droneshow:sub_load/setup_scoreboard
function droneshow:mover/setup_scoreboards
#execute as @e[tag=drone] run function droneshow:mover/pid_calculate

# Change max recursions (Yes, this is apparently also for functions)
gamerule maxCommandChainLength 130000

