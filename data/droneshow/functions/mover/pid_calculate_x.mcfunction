scoreboard players operation @s Measured_X = @s PosX
scoreboard players operation @s Setpoint_X = @s DestX

# Calculate Error (Setpoint - Measured)
scoreboard players operation @s Error_X = @s Setpoint_X
scoreboard players operation @s Error_X -= @s Measured_X

# Proportional Term: P = Kp * Error
scoreboard players operation @s P_term_X = @s Error_X
scoreboard players operation @s P_term_X *= Kp Constants
#scoreboard players operation @s P_term_X /= Multiplier Constants

# Integral Term: Integral += Error; I = Ki * Integral
# (Prevent Integral windup)
scoreboard players operation @s Integral_X += @s Error_X

# Limit the Integral to prevent windup
scoreboard players operation @s Integral_X < MaxIntegral Constants
scoreboard players operation @s Integral_X > MinIntegral Constants

scoreboard players operation @s I_term_X = @s Integral_X
scoreboard players operation @s I_term_X *= Ki Constants

# Derivative Term: D = Kd * (Error - PreviousError)
scoreboard players operation @s Derivative_X = @s Error_X
scoreboard players operation @s Derivative_X -= @s PreviousError_X
scoreboard players operation @s D_term_X = @s Derivative_X
scoreboard players operation @s D_term_X *= Kd Constants

# Store current Error as PreviousError for next cycle
scoreboard players operation @s PreviousError_X = @s Error_X

# Combine P, I, D terms for Output
scoreboard players set @s Output_X 0
scoreboard players operation @s Output_X += @s P_term_X
scoreboard players operation @s Output_X += @s I_term_X
scoreboard players operation @s Output_X += @s D_term_X

# Clamp the Output to MaxOutput and MinOutput
scoreboard players operation @s Output_X < MaxOutput Constants
scoreboard players operation @s Output_X > MinOutput Constants
scoreboard players operation @s Temp_Output_X = @s Output_X
scoreboard players operation @s Temp_Output_X /= OutputMultipier Constants

scoreboard players operation @s NewPosX = @s Measured_X
scoreboard players operation @s NewPosX += @s Temp_Output_X

execute store result storage pid:pos X double 0.00001 run scoreboard players get @s NewPosX
data modify entity @s Pos[0] set from storage pid:pos X
