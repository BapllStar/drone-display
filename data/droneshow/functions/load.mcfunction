tellraw @a {"text":"Drone Show has been reloaded","color":"aqua"}

# Kill the previous blocks
function droneshow:kill_block_displays

# Summon important stuff
function droneshow:summon/master

# Scoreboard shenanigans
function droneshow:sub_load/setup_scoreboard
function droneshow:mover/setup_scoreboards
#execute as @e[tag=drone] run function droneshow:mover/pid_calculate

# Change max recursive computations (Yes, this is apparently also for functions)
# There are about 42,06 computations per block in the matrix
# 420576 for 100x100
# 105144 for 50x50
# 16824 for 20x20
gamerule maxCommandChainLength 420576

