execute if entity @e[tag=Master,tag=HasHitbox] run function droneshow:shulkers/disable

execute unless entity @e[tag=Master,tag=JustDisabled] run function droneshow:shulkers/enable

tag @e[tag=Master] remove JustDisabled