##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
function zombieever/door/open_cave_loot_in

data merge entity @e[tag=pve.title,limit=1] {CustomName:'"\\u00a7c地牢探险"'}
scoreboard players set zombie.round board 18
# tellraw @a[team=play.zombie] ["\u00a7a感谢各位的游玩！目前版本PVE暂时只做到这里，敬请期待更新！"]
# function zombieever/over/win
