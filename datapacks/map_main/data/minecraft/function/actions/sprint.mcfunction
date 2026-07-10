# say sprint
scoreboard players reset @s action.sprint
execute if score t_says.state state matches 1.. as @s[team=t_says,gamemode=adventure] at @s run function t_says/action/sprint
execute if score mutouren.state state matches 1.. as @s[team=mutouren,gamemode=adventure] at @s run function mutouren/action/sprint