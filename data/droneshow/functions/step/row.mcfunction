function droneshow:summon/colour_block
scoreboard players add @e[tag=Master] current_row 1
execute unless score @e[tag=Master,limit=1] rows <= @e[tag=Master,limit=1] current_row positioned ~ ~ ~1 run function droneshow:step/row
