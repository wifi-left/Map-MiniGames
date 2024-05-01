##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set color.state state 2
scoreboard players set color.tick tick 6
tellraw @a[team=wait.color] ["\u00a7c颜色已经开始变化！"]
tellraw @a[team=play.color] ["\u00a7c颜色已经开始变化！"]
execute store result score color.rantype board run random value 1..5
execute if score color.rantype board matches 1..2 store result score color.ran.blockwidth board run random value 1..4
