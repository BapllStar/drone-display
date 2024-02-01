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
scoreboard objectives add Error_X dummy
scoreboard objectives add Integral_X dummy
scoreboard objectives add Derivative_X dummy
scoreboard objectives add PreviousError_X dummy
scoreboard objectives add Setpoint_X dummy
scoreboard objectives add Measured_X dummy
scoreboard objectives add Output_X dummy
scoreboard objectives add P_term_X dummy
scoreboard objectives add I_term_X dummy
scoreboard objectives add D_term_X dummy

scoreboard objectives add Error_Y dummy
scoreboard objectives add Integral_Y dummy
scoreboard objectives add Derivative_Y dummy
scoreboard objectives add PreviousError_Y dummy
scoreboard objectives add Setpoint_Y dummy
scoreboard objectives add Measured_Y dummy
scoreboard objectives add Output_Y dummy
scoreboard objectives add P_term_Y dummy
scoreboard objectives add I_term_Y dummy
scoreboard objectives add D_term_Y dummy

scoreboard objectives add Error_Z dummy
scoreboard objectives add Integral_Z dummy
scoreboard objectives add Derivative_Z dummy
scoreboard objectives add PreviousError_Z dummy
scoreboard objectives add Setpoint_Z dummy
scoreboard objectives add Measured_Z dummy
scoreboard objectives add Output_Z dummy
scoreboard objectives add P_term_Z dummy
scoreboard objectives add I_term_Z dummy
scoreboard objectives add D_term_Z dummy


scoreboard objectives add Constants dummy
scoreboard objectives add NewPosX dummy
scoreboard objectives add NewPosY dummy
scoreboard objectives add NewPosZ dummy


scoreboard players set Kp Constants 10
scoreboard players set Ki Constants 5
scoreboard players set Kd Constants 70

scoreboard players set MaxIntegral Constants 4000
scoreboard players set MinIntegral Constants -4000

scoreboard players set MaxOutput Constants 5000
scoreboard players set MinOutput Constants -5000


scoreboard players set Multiplier Constants 100000


tellraw @a {"text":"Setup was loaded","color":"aqua"}
