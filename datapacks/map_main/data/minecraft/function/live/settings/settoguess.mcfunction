##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
playsound minecraft:ui.button.click player @s

## 检测是否禁止设置
scoreboard players set tmp.canset board 0
execute store result score tmp.canset board run function admin/setting/canset
execute if score tmp.canset board matches 0 run tellraw @s ["§c游戏仅管理员可以设定游戏选项。\n§7如果您是管理员，您可以在大厅设置中切换模式。"]
execute if score tmp.canset board matches 0 run playsound block.anvil.land player @s ~ ~ ~ 1 1 0
execute if score tmp.canset board matches 0 run return 0

data modify block 36 8 0 front_text.messages[1] set value [{"text":"Normal Mode","color":"aqua","click_event":{"action":"run_command","command":"/function minecraft:live/settings/settonormal"}}]
data modify block 36 8 0 front_text.messages[2] set value [{"text":"\u00a7a[\u00a76Guess Killer\u00a7a]","color":"gold"}]

scoreboard players set live.set.mode live.all 1
team modify play.live.runner friendlyFire false
tellraw @a[team=wait.live] ["§a[INFO] §b模式变成了 §6[Guess Killer]§b.\n§e在这个模式中，Killer 不会获得发光效果。"]

