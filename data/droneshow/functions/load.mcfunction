tellraw @a {"text":"Drone Show has been reloaded","color":"aqua"}

# Kill the previous blocks
function droneshow:kill_block_displays

# Summon important stuff
function droneshow:summon/master
function droneshow:summon/spawner

# Scoreboard shenanigans
function droneshow:sub_load/setup_scoreboard
function droneshow:mover/setup_scoreboard
<<<<<<< Updated upstream
=======

# Kill the previous blocks
function droneshow:kill_block_displays

execute as @e[tag=drone] run function droneshow:mover/pid_calculate
>>>>>>> Stashed changes
