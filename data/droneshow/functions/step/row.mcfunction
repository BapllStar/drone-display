function droneshow:summon/spot
scoreboard players add @e[tag=Master] current_row 1
execute unless score @e[tag=Master,limit=1] rows <= @e[tag=Master,limit=1] current_row positioned ~ ~ ~1.5 run function droneshow:step/row