## Range colour delta fix
scoreboard players operation @e[tag=Master] colour_delta = @e[tag=Master] decide_colour
scoreboard players operation @e[tag=Master] colour_delta -= @e[tag=Master] max_colours


scoreboard players operation @e[tag=Master] decide_colour = @e[tag=Master] min_colours
scoreboard players operation @e[tag=Master] decide_colour += @e[tag=Master] colour_delta
scoreboard players remove @e[tag=Master] decide_colour 1