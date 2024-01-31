function droneshow:step/row
scoreboard players set @e[tag=Master] current_row 0
scoreboard players add @e[tag=Master] current_column 1
execute unless score @e[tag=Master,limit=1] columns <= @e[tag=Master,limit=1] current_column positioned ~1.5 ~ ~ run function droneshow:step/column
