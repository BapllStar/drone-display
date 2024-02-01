scoreboard players operation @s Measured_Z = @s PosZ
scoreboard players operation @s Setpoint_Z = @s DestZ

# Calculate Error (Setpoint - Measured)
scoreboard players operation @s Error_Z = @s Setpoint_Z
scoreboard players operation @s Error_Z -= @s Measured_Z

# Proportional Term: P = Kp * Error
scoreboard players operation @s P_term_Z = @s Error_Z
scoreboard players operation @s P_term_Z *= Kp Constants
#scoreboard players operation @s P_term_Z /= Multiplier Constants

# Integral Term: Integral += Error; I = Ki * Integral
# (Prevent Integral windup)
scoreboard players operation @s Integral_Z += @s Error_Z

# Limit the Integral to prevent windup
scoreboard players operation @s Integral_Z < MaxIntegral Constants
scoreboard players operation @s Integral_Z > MinIntegral Constants

scoreboard players operation @s I_term_Z = @s Integral_Z
scoreboard players operation @s I_term_Z *= Ki Constants

# Derivative Term: D = Kd * (Error - PreviousError)
scoreboard players operation @s Derivative_Z = @s Error_Z
scoreboard players operation @s Derivative_Z -= @s PreviousError_Z
scoreboard players operation @s D_term_Z = @s Derivative_Z
scoreboard players operation @s D_term_Z *= Kd Constants

# Store current Error as PreviousError for next cycle
scoreboard players operation @s PreviousError_Z = @s Error_Z

# Combine P, I, D terms for Output
scoreboard players set @s Output_Z 0
scoreboard players operation @s Output_Z += @s P_term_Z
scoreboard players operation @s Output_Z += @s I_term_Z
scoreboard players operation @s Output_Z += @s D_term_Z

# Clamp the Output to MaxOutput and MinOutput
scoreboard players operation @s Output_Z < MaxOutput Constants
scoreboard players operation @s Output_Z > MinOutput Constants
scoreboard players operation @s Temp_Output_Z = @s Output_Z
scoreboard players operation @s Temp_Output_Z /= OutputMultipier Constants

scoreboard players operation @s NewPosZ = @s Measured_Z
scoreboard players operation @s NewPosZ += @s Temp_Output_Z

execute store result storage pid:pos Z double 0.00001 run scoreboard players get @s NewPosZ
data modify entity @s Pos[2] set from storage pid:pos Z
