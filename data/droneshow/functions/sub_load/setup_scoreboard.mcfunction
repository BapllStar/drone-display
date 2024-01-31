scoreboard objectives add rows dummy
scoreboard objectives add columns dummy

scoreboard players set @e[tag=Master] rows 10
scoreboard players set @e[tag=Master] columns 10

scoreboard objectives add current_row dummy
scoreboard objectives add current_column dummy

scoreboard players set @e[tag=Master] current_row 0
scoreboard players set @e[tag=Master] current_column 0