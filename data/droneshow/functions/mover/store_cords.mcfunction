execute store result score @s PosX run data get entity @s Pos[0] 100000
execute store result score @s PosY run data get entity @s Pos[1] 100000
execute store result score @s PosZ run data get entity @s Pos[2] 100000

execute store result score @s DestX run data get entity @e[tag=endpoint,limit=1,sort=nearest] Pos[0] 100000
execute store result score @s DestY run data get entity @e[tag=endpoint,limit=1,sort=nearest] Pos[1] 100000
execute store result score @s DestZ run data get entity @e[tag=endpoint,limit=1,sort=nearest] Pos[2] 100000