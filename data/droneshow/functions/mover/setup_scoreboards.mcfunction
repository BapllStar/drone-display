scoreboard objectives add PosX dummy
scoreboard objectives add PosY dummy
scoreboard objectives add PosZ dummy

scoreboard objectives add DestX dummy
scoreboard objectives add DestY dummy
scoreboard objectives add DestZ dummy

scoreboard objectives add DiffX dummy
scoreboard objectives add DiffY dummy
scoreboard objectives add DiffZ dummy


# Initialize the scoreboards
scoreboard objectives add Error dummy
scoreboard objectives add Integral dummy
scoreboard objectives add Derivative dummy
scoreboard objectives add PreviousError dummy
scoreboard objectives add Setpoint dummy
scoreboard objectives add Measured dummy
scoreboard objectives add Output dummy
scoreboard objectives add P_term dummy
scoreboard objectives add I_term dummy
scoreboard objectives add D_term dummy
scoreboard objectives add Constants dummy
scoreboard objectives add NewPosY dummy

# Initialize the PID constants
scoreboard players set Kp Constants 1
scoreboard players set Ki Constants 0.01
scoreboard players set Kd Constants 0

# Initialize variables
scoreboard players set @s P_term 0
scoreboard players set @s I_term 0
scoreboard players set @s D_term 0
scoreboard players set @s Error 0
scoreboard players set @s Integral 0
scoreboard players set @s Derivative 0
scoreboard players set @s PreviousError 0
scoreboard players set @s Setpoint 0
scoreboard players set @s Measured 0
scoreboard players set @s Output 0
scoreboard players set @s NewPosY 0

# Additional setup for Integral windup prevention
scoreboard players set MaxIntegral Constants 10
scoreboard players set MinIntegral Constants -10

# In setup.mcfunction
scoreboard players set MaxOutput Constants 10
scoreboard players set MinOutput Constants -10

