##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# execute if score sur.zommode state matches 1 run
execute if score sur.zommode state matches 1 as @s[tag=!sur.killedbyzom] run function surgame:out
execute if score sur.zommode state matches 1 as @s[tag=sur.killedbyzom] run function surgame:joinzom
execute if score sur.zommode state matches 0 run function surgame:out
# execute if score sur.zommode state matches 0 run tellraw @s ["\n\u00a7c你淘汰了。\n"]

