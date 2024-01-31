execute as @e[tag=mate] at @s run tp @s ~ ~ ~ ~5 ~
execute at @e[tag=mate] run particle minecraft:campfire_cosy_smoke ^ ^ ^2 0.01 0.01 0.01 0.01 2 force @a[team=Adult]
execute at @e[tag=mate] run particle minecraft:dust 1 0 0 1 ^ ^ ^2 0.01 0.01 0.01 0.005 5 force @a[team=Adult]
execute at @e[tag=mate] run particle minecraft:dust 0.1 0.1 0.1 5 ^ ^ ^2 0.01 0.01 0.01 0.005 2 force @a[team=Adult]
execute as @e[tag=mate] at @s facing entity @e[distance=..50,limit=1,type=#raiders] eyes run tp @s ^ ^ ^0.25
execute at @e[tag=mate] positioned ^ ^ ^2 if entity @e[type=#raiders,distance=3..50] run playsound minecraft:entity.evoker.prepare_attack neutral @a[team=Adult] ~ ~ ~ 0.1
execute at @e[tag=mate] positioned ^ ^ ^2 if entity @e[type=#raiders,distance=50..] run playsound minecraft:entity.vex.death neutral @a[team=Adult] ~ ~ ~ 0.1
execute at @e[tag=mate] positioned ^ ^ ^2 unless entity @e[type=#raiders,distance=..50] run playsound minecraft:entity.vex.death neutral @a[team=Adult] ~ ~ ~ 0.1
execute at @e[tag=mate] positioned ^ ^ ^2 run effect give @e[type=#raiders,distance=..3] minecraft:levitation 1 1 true
execute at @e[tag=mate] positioned ^ ^ ^2 run effect give @e[type=#raiders,distance=..3] minecraft:wither 1 1 true
execute at @e[tag=mate] positioned ^ ^ ^2 if entity @e[tag=mate,distance=..3] run effect give @e[type=#raiders,distance=..3] minecraft:poison 10 1
execute at @e[tag=mate] positioned ^ ^ ^2 if entity @e[type=#raiders,distance=..3] run playsound minecraft:entity.zombie.infect neutral @a[team=Adult] ~ ~ ~ 0.1
execute as @e[tag=mate] at @s positioned ^ ^ ^2 if entity @e[type=#raiders,distance=..3] run scoreboard players set @s lifetime 2000
execute as @e[tag=mate] at @s unless entity @e[distance=..50,type=#raiders] run tp @s ~ ~-0.05 ~
scoreboard players remove @e[tag=mate] lifetime 1
execute as @e[tag=mate,scores={lifetime=..0}] run execute at @s run particle minecraft:lava ^ ^ ^2 0.1 0.1 0.1 0 100 force @a[team=Adult]
kill @e[tag=mate,scores={lifetime=..0}]