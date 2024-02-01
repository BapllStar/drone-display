execute as @s[scores={cs_timer=5}] at @e[tag=temp_anim_stand_Up, limit=1, sort=nearest] as @e[tag=Blue,limit=4,sort=nearest, distance=0.1..1.3, tag=!view] run scoreboard players set @s scene 1

execute as @s[scores={cs_timer=6}] run data modify entity @s block_state.Name set value "red_concrete"
execute as @s[scores={cs_timer=12}] run data modify entity @s block_state.Name set value "orange_concrete"
execute as @s[scores={cs_timer=18}] run data modify entity @s block_state.Name set value "yellow_concrete"
execute as @s[scores={cs_timer=24}] run data modify entity @s block_state.Name set value "lime_concrete"
execute as @s[scores={cs_timer=30}] run data modify entity @s block_state.Name set value "green_concrete"
execute as @s[scores={cs_timer=36}] run data modify entity @s block_state.Name set value "cyan_concrete"
execute as @s[scores={cs_timer=42}] run data modify entity @s block_state.Name set value "light_blue_concrete"
execute as @s[scores={cs_timer=48}] run data modify entity @s block_state.Name set value "blue_concrete"
execute as @s[scores={cs_timer=52}] run data modify entity @s block_state.Name set value "purple_concrete"
execute as @s[scores={cs_timer=60}] run data modify entity @s block_state.Name set value "magenta_concrete"

execute as @s[scores={cs_timer=1}] at @s run summon block_display ~ ~ ~ {Tags:["temp_anim_stand_Up"]}
execute as @s[scores={cs_timer=1}] at @e[tag=temp_anim_stand_Up, limit=1, sort=nearest] run tp @s[tag=view] ~0.000000 ~0.100000 ~0.000000 -359.999997 -0.000003
execute as @s[scores={cs_timer=4}] at @e[tag=temp_anim_stand_Up, limit=1, sort=nearest] run tp @s[tag=view] ~0.000000 ~0.278624 ~0.000000 -359.999997 -0.000003
execute as @s[scores={cs_timer=7}] at @e[tag=temp_anim_stand_Up, limit=1, sort=nearest] run tp @s[tag=view] ~0.000000 ~0.580541 ~0.000000 -359.999997 -0.000003
execute as @s[scores={cs_timer=10}] at @e[tag=temp_anim_stand_Up, limit=1, sort=nearest] run tp @s[tag=view] ~0.000000 ~1.095266 ~0.000000 -359.999997 -0.000003
execute as @s[scores={cs_timer=13}] at @e[tag=temp_anim_stand_Up, limit=1, sort=nearest] run tp @s[tag=view] ~0.000000 ~1.659820 ~0.000000 -359.999997 -0.000003
execute as @s[scores={cs_timer=16}] at @e[tag=temp_anim_stand_Up, limit=1, sort=nearest] run tp @s[tag=view] ~0.000000 ~2.043068 ~0.000000 -359.999997 -0.000003
execute as @s[scores={cs_timer=19}] at @e[tag=temp_anim_stand_Up, limit=1, sort=nearest] run tp @s[tag=view] ~0.000000 ~2.299744 ~0.000000 -359.999997 -0.000003
execute as @s[scores={cs_timer=22}] at @e[tag=temp_anim_stand_Up, limit=1, sort=nearest] run tp @s[tag=view] ~0.000000 ~2.484442 ~0.000000 -359.999997 -0.000003
execute as @s[scores={cs_timer=25}] at @e[tag=temp_anim_stand_Up, limit=1, sort=nearest] run tp @s[tag=view] ~0.000000 ~2.624063 ~0.000000 -359.999997 -0.000003
execute as @s[scores={cs_timer=28}] at @e[tag=temp_anim_stand_Up, limit=1, sort=nearest] run tp @s[tag=view] ~0.000000 ~2.732839 ~0.000000 -359.999997 -0.000003
execute as @s[scores={cs_timer=31}] at @e[tag=temp_anim_stand_Up, limit=1, sort=nearest] run tp @s[tag=view] ~0.000000 ~2.819105 ~0.000000 -359.999997 -0.000003
execute as @s[scores={cs_timer=34}] at @e[tag=temp_anim_stand_Up, limit=1, sort=nearest] run tp @s[tag=view] ~0.000000 ~2.888152 ~0.000000 -359.999997 -0.000003
execute as @s[scores={cs_timer=37}] at @e[tag=temp_anim_stand_Up, limit=1, sort=nearest] run tp @s[tag=view] ~0.000000 ~2.943550 ~0.000000 -359.999997 -0.000003
execute as @s[scores={cs_timer=40}] at @e[tag=temp_anim_stand_Up, limit=1, sort=nearest] run tp @s[tag=view] ~0.000000 ~2.987829 ~0.000000 -359.999997 -0.000003
execute as @s[scores={cs_timer=43}] at @e[tag=temp_anim_stand_Up, limit=1, sort=nearest] run tp @s[tag=view] ~0.000000 ~3.022850 ~0.000000 -359.999997 -0.000003
execute as @s[scores={cs_timer=46}] at @e[tag=temp_anim_stand_Up, limit=1, sort=nearest] run tp @s[tag=view] ~0.000000 ~3.050022 ~0.000000 -359.999997 -0.000003
execute as @s[scores={cs_timer=49}] at @e[tag=temp_anim_stand_Up, limit=1, sort=nearest] run tp @s[tag=view] ~0.000000 ~3.070444 ~0.000000 -359.999997 -0.000003
execute as @s[scores={cs_timer=52}] at @e[tag=temp_anim_stand_Up, limit=1, sort=nearest] run tp @s[tag=view] ~0.000000 ~3.084987 ~0.000000 -359.999997 -0.000003
execute as @s[scores={cs_timer=55}] at @e[tag=temp_anim_stand_Up, limit=1, sort=nearest] run tp @s[tag=view] ~0.000000 ~3.094355 ~0.000000 -359.999997 -0.000003
execute as @s[scores={cs_timer=58}] at @e[tag=temp_anim_stand_Up, limit=1, sort=nearest] run tp @s[tag=view] ~0.000000 ~3.099129 ~0.000000 -359.999997 -0.000003
execute as @s[scores={cs_timer=60}] at @e[tag=temp_anim_stand_Up, limit=1, sort=nearest] run tp @s[tag=view] ~0.000000 ~3.100000 ~0.000000 -359.999997 -0.000003
execute as @s[scores={cs_timer=60}] run tag @s remove Down
execute as @s[scores={cs_timer=60}] run tag @s add Up
execute as @s[scores={cs_timer=60}] at @s run kill @e[tag=temp_anim_stand_Up, limit=1, sort=nearest]
execute as @s[scores={cs_timer=60}] at @s run function cutscene:cam_stop
