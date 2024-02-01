
# To add a cutscene to your world copy the commands below and replace the placeholder names with your values:
#execute as @e[scores={scene=SCENE_NUMBER}, tag=!view] at @s run function cutscene:cam_start
#execute as @e[scores={scene=SCENE_NUMBER}, tag=view] at @s run function cutscene:cutscenes/CUTSCENE_NAME

# Use "/reload" in your MC word after saving this file to update what scenes you have.
# Use "/scoreboard players set @p scene 1" to start scene 1.
# Use "/function cutscene:cam_stop" to interrupt the cutscene manually before it ends.

execute as @e[scores={scene=1}, tag=!view] at @s run function cutscene:cam_start
execute as @e[scores={scene=1}, tag=view] at @s run function cutscene:cutscenes/smooth_up

execute as @e[scores={scene=2}, tag=!view] at @s run function cutscene:cam_start
execute as @e[scores={scene=2}, tag=view] at @s run function cutscene:cutscenes/smooth_down