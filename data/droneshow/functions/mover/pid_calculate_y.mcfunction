scoreboard players operation @s Measured_Y = @s PosY
scoreboard players operation @s Setpoint_Y = @s DestY

# Calculate Error (Setpoint - Measured)
scoreboard players operation @s Error_Y = @s Setpoint_Y
scoreboard players operation @s Error_Y -= @s Measured_Y

# Proportional Term: P = Kp * Error
scoreboard players operation @s P_term_Y = @s Error_Y
scoreboard players operation @s P_term_Y *= Kp Constants
#scoreboard players operation @s P_term_Y /= Multiplier Constants

# Integral Term: Integral += Error; I = Ki * Integral
# (Prevent Integral windup)
scoreboard players operation @s Integral_Y += @s Error_Y

# Limit the Integral to prevent windup
scoreboard players operation @s Integral_Y < MaxIntegral Constants
scoreboard players operation @s Integral_Y > MinIntegral Constants

scoreboard players operation @s I_term_Y = @s Integral_Y
scoreboard players operation @s I_term_Y *= Ki Constants

# Derivative Term: D = Kd * (Error - PreviousError)
scoreboard players operation @s Derivative_Y = @s Error_Y
scoreboard players operation @s Derivative_Y -= @s PreviousError_Y
scoreboard players operation @s D_term_Y = @s Derivative_Y
scoreboard players operation @s D_term_Y *= Kd Constants

# Store current Error as PreviousError for next cycle
scoreboard players operation @s PreviousError_Y = @s Error_Y

# Combine P, I, D terms for Output
scoreboard players set @s Output_Y 0
scoreboard players operation @s Output_Y += @s P_term_Y
scoreboard players operation @s Output_Y += @s I_term_Y
scoreboard players operation @s Output_Y += @s D_term_Y

# Clamp the Output to MaxOutput and MinOutput
scoreboard players operation @s Output_Y < MaxOutput Constants
scoreboard players operation @s Output_Y > MinOutput Constants
scoreboard players operation @s Temp_Output_Y = @s Output_Y
scoreboard players operation @s Temp_Output_Y /= OutputMultipier Constants

scoreboard players operation @s NewPosY = @s Measured_Y
scoreboard players operation @s NewPosY += @s Temp_Output_Y

execute store result storage pid:pos Y double 0.00001 run scoreboard players get @s NewPosY
data modify entity @s Pos[1] set from storage pid:pos Y
