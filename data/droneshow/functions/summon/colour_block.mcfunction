function droneshow:range/colour

execute if score @e[tag=Master,limit=1] decide_colour matches 1 run function droneshow:summon/colour/blue
execute if score @e[tag=Master,limit=1] decide_colour matches 2 run function droneshow:summon/colour/blue
execute if score @e[tag=Master,limit=1] decide_colour matches 3 run function droneshow:summon/colour/blue
execute if score @e[tag=Master,limit=1] decide_colour matches 4 run function droneshow:summon/colour/orange
execute if score @e[tag=Master,limit=1] decide_colour matches 5 run function droneshow:summon/colour/orange
execute if score @e[tag=Master,limit=1] decide_colour matches 6 run function droneshow:summon/colour/orange
execute if score @e[tag=Master,limit=1] decide_colour matches 7 run function droneshow:summon/colour/purple
execute if score @e[tag=Master,limit=1] decide_colour matches 8 run function droneshow:summon/colour/purple
execute if score @e[tag=Master,limit=1] decide_colour matches 9 run function droneshow:summon/colour/purple
execute if score @e[tag=Master,limit=1] decide_colour matches 10 run function droneshow:summon/colour/yellow
execute if score @e[tag=Master,limit=1] decide_colour matches 11 run function droneshow:summon/colour/yellow
execute if score @e[tag=Master,limit=1] decide_colour matches 12 run function droneshow:summon/colour/yellow
execute if score @e[tag=Master,limit=1] decide_colour matches 13 run function droneshow:summon/colour/light_blue
execute if score @e[tag=Master,limit=1] decide_colour matches 14 run function droneshow:summon/colour/light_blue
execute if score @e[tag=Master,limit=1] decide_colour matches 15 run function droneshow:summon/colour/light_blue
execute if score @e[tag=Master,limit=1] decide_colour matches 16 run function droneshow:summon/colour/red
execute if score @e[tag=Master,limit=1] decide_colour matches 17 run function droneshow:summon/colour/red
execute if score @e[tag=Master,limit=1] decide_colour matches 18 run function droneshow:summon/colour/red
execute if score @e[tag=Master,limit=1] decide_colour matches 19 run function droneshow:summon/colour/lime
execute if score @e[tag=Master,limit=1] decide_colour matches 20 run function droneshow:summon/colour/lime
execute if score @e[tag=Master,limit=1] decide_colour matches 21 run function droneshow:summon/colour/lime
execute if score @e[tag=Master,limit=1] decide_colour matches 22 run function droneshow:summon/colour/pink
execute if score @e[tag=Master,limit=1] decide_colour matches 23 run function droneshow:summon/colour/pink
execute if score @e[tag=Master,limit=1] decide_colour matches 24 run function droneshow:summon/colour/pink
execute if score @e[tag=Master,limit=1] decide_colour matches 25 run function droneshow:summon/colour/green
execute if score @e[tag=Master,limit=1] decide_colour matches 26 run function droneshow:summon/colour/green
execute if score @e[tag=Master,limit=1] decide_colour matches 27 run function droneshow:summon/colour/green

scoreboard players operation @e[tag=Master,limit=1] decide_colour += @e[tag=Master,limit=1] colour_step_size