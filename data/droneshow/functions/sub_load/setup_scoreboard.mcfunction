scoreboard objectives add rows dummy
scoreboard objectives add columns dummy

scoreboard players set @e[tag=Master] rows 100
scoreboard players set @e[tag=Master] columns 100

scoreboard objectives add current_row dummy
scoreboard objectives add current_column dummy

scoreboard players set @e[tag=Master] current_row 0
scoreboard players set @e[tag=Master] current_column 0


# Colour

scoreboard objectives add decide_colour dummy
scoreboard players set @e[tag=Master] decide_colour 1

## Colour step size
scoreboard objectives add colour_step_size dummy
scoreboard players set @e[tag=Master] colour_step_size -1

## The max colour interval (Max 27)
scoreboard objectives add max_colours dummy
scoreboard players set @e[tag=Master] max_colours 27

## The min colour interval (Min 1)
scoreboard objectives add min_colours dummy
scoreboard players set @e[tag=Master] min_colours 1

scoreboard objectives add colour_delta dummy