scoreboard players reset @s[tag=view] scene
scoreboard players set @s[tag=view] cs_timer 0

tag @s remove view

gamemode adventure @s[tag=was_adv]
gamemode survival @s[tag=was_sur]
gamemode creative @s[tag=was_cre]

tag @s remove was_adv
tag @s remove was_sur
tag @s remove was_cre