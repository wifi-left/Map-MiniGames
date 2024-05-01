##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tp @s[team=play.battle.b] 144 35 -321 180 0
tp @s[team=play.battle.r] 144 35 -359 0 0
gamemode spectator @s[team=wait.battle]
give @s arrow[can_break={predicates:[{blocks:["white_wool","blue_wool","red_wool"]}],show_in_tooltip:false},unbreakable={show_in_tooltip:false}]
tag @s remove battle.notready
