# say walk

scoreboard players reset @s action.walk
execute if score t_says.state state matches 1.. as @s[team=t_says,gamemode=adventure] at @s run function t_says/action/walk