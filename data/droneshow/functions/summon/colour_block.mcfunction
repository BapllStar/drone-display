function droneshow:range/colour

summon block_display ~ ~ ~ {NoGravity:1b,Silent:1b,Tags:["Blue","Down","Uncoloured"],Passengers:[{id:"minecraft:shulker",OnGround:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,DeathLootTable:"minecraft:empty",NoAI:1b,AttachFace:0b,Tags:["Block_Shulker"],active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:-1,show_particles:0b}]}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,0f,-0.5f],scale:[1.f,1.f,1f]},block_state:{Name:"minecraft:blue_wool"},teleport_duration:10}

execute if score @e[tag=Master,limit=1] decide_colour matches 1 as @e[tag=Uncoloured] run function droneshow:summon/colour/blue
execute if score @e[tag=Master,limit=1] decide_colour matches 2 as @e[tag=Uncoloured] run function droneshow:summon/colour/blue
execute if score @e[tag=Master,limit=1] decide_colour matches 3 as @e[tag=Uncoloured] run function droneshow:summon/colour/blue
execute if score @e[tag=Master,limit=1] decide_colour matches 4 as @e[tag=Uncoloured] run function droneshow:summon/colour/orange
execute if score @e[tag=Master,limit=1] decide_colour matches 5 as @e[tag=Uncoloured] run function droneshow:summon/colour/orange
execute if score @e[tag=Master,limit=1] decide_colour matches 6 as @e[tag=Uncoloured] run function droneshow:summon/colour/orange
execute if score @e[tag=Master,limit=1] decide_colour matches 7 as @e[tag=Uncoloured] run function droneshow:summon/colour/purple
execute if score @e[tag=Master,limit=1] decide_colour matches 8 as @e[tag=Uncoloured] run function droneshow:summon/colour/purple
execute if score @e[tag=Master,limit=1] decide_colour matches 9 as @e[tag=Uncoloured] run function droneshow:summon/colour/purple
execute if score @e[tag=Master,limit=1] decide_colour matches 10 as @e[tag=Uncoloured] run function droneshow:summon/colour/yellow
execute if score @e[tag=Master,limit=1] decide_colour matches 11 as @e[tag=Uncoloured] run function droneshow:summon/colour/yellow
execute if score @e[tag=Master,limit=1] decide_colour matches 12 as @e[tag=Uncoloured] run function droneshow:summon/colour/yellow
execute if score @e[tag=Master,limit=1] decide_colour matches 13 as @e[tag=Uncoloured] run function droneshow:summon/colour/light_blue
execute if score @e[tag=Master,limit=1] decide_colour matches 14 as @e[tag=Uncoloured] run function droneshow:summon/colour/light_blue
execute if score @e[tag=Master,limit=1] decide_colour matches 15 as @e[tag=Uncoloured] run function droneshow:summon/colour/light_blue
execute if score @e[tag=Master,limit=1] decide_colour matches 16 as @e[tag=Uncoloured] run function droneshow:summon/colour/red
execute if score @e[tag=Master,limit=1] decide_colour matches 17 as @e[tag=Uncoloured] run function droneshow:summon/colour/red
execute if score @e[tag=Master,limit=1] decide_colour matches 18 as @e[tag=Uncoloured] run function droneshow:summon/colour/red
execute if score @e[tag=Master,limit=1] decide_colour matches 19 as @e[tag=Uncoloured] run function droneshow:summon/colour/lime
execute if score @e[tag=Master,limit=1] decide_colour matches 20 as @e[tag=Uncoloured] run function droneshow:summon/colour/lime
execute if score @e[tag=Master,limit=1] decide_colour matches 21 as @e[tag=Uncoloured] run function droneshow:summon/colour/lime
execute if score @e[tag=Master,limit=1] decide_colour matches 22 as @e[tag=Uncoloured] run function droneshow:summon/colour/pink
execute if score @e[tag=Master,limit=1] decide_colour matches 23 as @e[tag=Uncoloured] run function droneshow:summon/colour/pink
execute if score @e[tag=Master,limit=1] decide_colour matches 24 as @e[tag=Uncoloured] run function droneshow:summon/colour/pink
execute if score @e[tag=Master,limit=1] decide_colour matches 25 as @e[tag=Uncoloured] run function droneshow:summon/colour/green
execute if score @e[tag=Master,limit=1] decide_colour matches 26 as @e[tag=Uncoloured] run function droneshow:summon/colour/green
execute if score @e[tag=Master,limit=1] decide_colour matches 27 as @e[tag=Uncoloured] run function droneshow:summon/colour/green

scoreboard players operation @e[tag=Master,limit=1] decide_colour += @e[tag=Master,limit=1] colour_step_size