##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
playsound entity.enderman.teleport player @s ~ ~ ~ 1 1 1
tellraw @s ["§c您无法在进行游戏时快速加入其他游戏队列！"]
dialog show @s {type:"minecraft:multi_action",title:{text:"温馨提示",color:yellow},body:{type:"minecraft:plain_message",contents:[{text:"您无法在游玩游戏的时候加入其他游戏。",color:red}]},actions:[{label:"返回大厅再打开菜单",tooltip:"退出当前小游戏返回大厅然后尝试打开菜单。",action:{type:"run_command",command:"trigger quickplay set -2"}},{label:"打开主菜单",tooltip:"打开主菜单",action:{type:"show_dialog",dialog:"menu"}}],pause:false,after_action:"close",exit_action:{label:"关闭"}}
scoreboard players reset @s quickplay

