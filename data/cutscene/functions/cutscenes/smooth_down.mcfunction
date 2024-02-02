execute as @s[scores={cs_timer=5}] at @e[tag=temp_anim_stand_Down, limit=1, sort=nearest] as @e[tag=Blue,limit=4,sort=nearest, distance=0.1..1.3, tag=!view] run scoreboard players set @s scene 2

execute as @s[scores={cs_timer=6},tag=colorchange] run data modify entity @s block_state.Name set value "magenta_concrete"
execute as @s[scores={cs_timer=12},tag=colorchange] run data modify entity @s block_state.Name set value "purple_concrete"
execute as @s[scores={cs_timer=18},tag=colorchange] run data modify entity @s block_state.Name set value "blue_concrete"
execute as @s[scores={cs_timer=24},tag=colorchange] run data modify entity @s block_state.Name set value "light_blue_concrete"
execute as @s[scores={cs_timer=30},tag=colorchange] run data modify entity @s block_state.Name set value "cyan_concrete"
execute as @s[scores={cs_timer=36},tag=colorchange] run data modify entity @s block_state.Name set value "green_concrete"
execute as @s[scores={cs_timer=42},tag=colorchange] run data modify entity @s block_state.Name set value "lime_concrete"
execute as @s[scores={cs_timer=48},tag=colorchange] run data modify entity @s block_state.Name set value "yellow_concrete"
execute as @s[scores={cs_timer=52},tag=colorchange] run data modify entity @s block_state.Name set value "orange_concrete"
execute as @s[scores={cs_timer=60},tag=colorchange] run data modify entity @s block_state.Name set value "red_concrete"

execute as @s[scores={cs_timer=1}] at @s run summon block_display ~ ~ ~ {Tags:["temp_anim_stand_Down"],NoGravity:1b, Invisible:1b, marker:1b}
execute as @s[scores={cs_timer=1}] at @e[tag=temp_anim_stand_Down, limit=1, sort=nearest] run tp @s[tag=view] ~0.000000 ~0.000000 ~0.000000 -359.999997 -0.000003
execute as @s[scores={cs_timer=4}] at @e[tag=temp_anim_stand_Down, limit=1, sort=nearest] run tp @s[tag=view] ~0.000000 ~-0.078624 ~0.000000 -359.999997 -0.000003
execute as @s[scores={cs_timer=7}] at @e[tag=temp_anim_stand_Down, limit=1, sort=nearest] run tp @s[tag=view] ~0.000000 ~-0.380541 ~0.000000 -359.999997 -0.000003
execute as @s[scores={cs_timer=10}] at @e[tag=temp_anim_stand_Down, limit=1, sort=nearest] run tp @s[tag=view] ~0.000000 ~-0.895266 ~0.000000 -359.999997 -0.000003
execute as @s[scores={cs_timer=13}] at @e[tag=temp_anim_stand_Down, limit=1, sort=nearest] run tp @s[tag=view] ~0.000000 ~-1.459820 ~0.000000 -359.999997 -0.000003
execute as @s[scores={cs_timer=16}] at @e[tag=temp_anim_stand_Down, limit=1, sort=nearest] run tp @s[tag=view] ~0.000000 ~-1.843068 ~0.000000 -359.999997 -0.000003
execute as @s[scores={cs_timer=19}] at @e[tag=temp_anim_stand_Down, limit=1, sort=nearest] run tp @s[tag=view] ~0.000000 ~-2.099744 ~0.000000 -359.999997 -0.000003
execute as @s[scores={cs_timer=22}] at @e[tag=temp_anim_stand_Down, limit=1, sort=nearest] run tp @s[tag=view] ~0.000000 ~-2.384442 ~0.000000 -359.999997 -0.000003
execute as @s[scores={cs_timer=25}] at @e[tag=temp_anim_stand_Down, limit=1, sort=nearest] run tp @s[tag=view] ~0.000000 ~-2.524063 ~0.000000 -359.999997 -0.000003
execute as @s[scores={cs_timer=28}] at @e[tag=temp_anim_stand_Down, limit=1, sort=nearest] run tp @s[tag=view] ~0.000000 ~-2.632839 ~0.000000 -359.999997 -0.000003
execute as @s[scores={cs_timer=31}] at @e[tag=temp_anim_stand_Down, limit=1, sort=nearest] run tp @s[tag=view] ~0.000000 ~-2.719105 ~0.000000 -359.999997 -0.000003
execute as @s[scores={cs_timer=34}] at @e[tag=temp_anim_stand_Down, limit=1, sort=nearest] run tp @s[tag=view] ~0.000000 ~-2.788152 ~0.000000 -359.999997 -0.000003
execute as @s[scores={cs_timer=37}] at @e[tag=temp_anim_stand_Down, limit=1, sort=nearest] run tp @s[tag=view] ~0.000000 ~-2.843550 ~0.000000 -359.999997 -0.000003
execute as @s[scores={cs_timer=40}] at @e[tag=temp_anim_stand_Down, limit=1, sort=nearest] run tp @s[tag=view] ~0.000000 ~-2.887830 ~0.000000 -359.999997 -0.000003
execute as @s[scores={cs_timer=43}] at @e[tag=temp_anim_stand_Down, limit=1, sort=nearest] run tp @s[tag=view] ~0.000000 ~-2.922850 ~0.000000 -359.999997 -0.000003
execute as @s[scores={cs_timer=46}] at @e[tag=temp_anim_stand_Down, limit=1, sort=nearest] run tp @s[tag=view] ~0.000000 ~-2.950022 ~0.000000 -359.999997 -0.000003
execute as @s[scores={cs_timer=49}] at @e[tag=temp_anim_stand_Down, limit=1, sort=nearest] run tp @s[tag=view] ~0.000000 ~-2.970444 ~0.000000 -359.999997 -0.000003
execute as @s[scores={cs_timer=52}] at @e[tag=temp_anim_stand_Down, limit=1, sort=nearest] run tp @s[tag=view] ~0.000000 ~-2.984987 ~0.000000 -359.999997 -0.000003
execute as @s[scores={cs_timer=55}] at @e[tag=temp_anim_stand_Down, limit=1, sort=nearest] run tp @s[tag=view] ~0.000000 ~-2.994355 ~0.000000 -359.999997 -0.000003
execute as @s[scores={cs_timer=58}] at @e[tag=temp_anim_stand_Down, limit=1, sort=nearest] run tp @s[tag=view] ~0.000000 ~-2.999129 ~0.000000 -359.999997 -0.000003
execute as @s[scores={cs_timer=60}] at @e[tag=temp_anim_stand_Down, limit=1, sort=nearest] run tp @s[tag=view] ~0.000000 ~-3.000000 ~0.000000 -359.999997 -0.000003
execute as @s[scores={cs_timer=60}] at @s[tag=view] align xyz run tp @s[tag=view] ~.5 ~ ~.5
execute as @s[scores={cs_timer=60}] run tag @s remove Up
execute as @s[scores={cs_timer=60}] run tag @s add Down
execute as @s[scores={cs_timer=60}] at @s run kill @e[tag=temp_anim_stand_Down, limit=1, sort=nearest]
execute as @s[scores={cs_timer=60}] at @s run function cutscene:cam_stop

