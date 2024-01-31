scoreboard players operation @s Measured = @s PosY
scoreboard players operation @s Setpoint = @s DestY

# Calculate Error (Setpoint - Measured)
scoreboard players operation @s Error = @s Setpoint
scoreboard players operation @s Error -= @s Measured

# Proportional Term: P = Kp * Error
scoreboard players operation @s P_term = @s Error
scoreboard players operation @s P_term *= Kp Constants

# Integral Term: Integral += Error; I = Ki * Integral
# (Prevent Integral windup)
scoreboard players operation @s Integral += @s Error

# Limit the Integral to prevent windup
scoreboard players operation @s Integral < MaxIntegral Constants
scoreboard players operation @s Integral > MinIntegral Constants

scoreboard players operation @s I_term = @s Integral
scoreboard players operation @s I_term *= Ki Constants

# Derivative Term: D = Kd * (Error - PreviousError)
scoreboard players operation @s Derivative = @s Error
scoreboard players operation @s Derivative -= @s PreviousError
scoreboard players operation @s D_term = @s Derivative
scoreboard players operation @s D_term *= Kd Constants

# Store current Error as PreviousError for next cycle
scoreboard players operation @s PreviousError = @s Error

# Combine P, I, D terms for Output
scoreboard players set @s Output 0
scoreboard players operation @s Output += @s P_term
scoreboard players operation @s Output += @s I_term
scoreboard players operation @s Output += @s D_term

# Clamp the Output to MaxOutput and MinOutput
scoreboard players operation @s Output < MaxOutput Constants
scoreboard players operation @s Output > MinOutput Constants

scoreboard players operation @s NewPosY = @s Measured
scoreboard players operation @s NewPosY += @s Output

execute store result storage pid:pos Y double 0.01 run scoreboard players get @s NewPosY
data modify entity @s Pos[1] set from storage pid:pos Y

schedule function droneshow:mover/pid_calculate 10t
