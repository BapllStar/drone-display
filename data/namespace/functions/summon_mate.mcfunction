summon minecraft:armor_stand ~ ~2 ~ {Marker:1b,Invisible:1b,NoGravity:1b,Tags:[mate]}
execute positioned ~ ~2 ~ run scoreboard players add @e[limit=1,distance=..0.01,tag=mate] lifetime 2000
particle minecraft:explosion_emitter ~ ~2 ~ 0.01 0.01 0.01 0.005 1 force @a[team=Adult]
playsound minecraft:entity.wither.ambient neutral @a[team=Adult] ~ ~2 ~