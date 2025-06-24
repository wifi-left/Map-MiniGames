##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
## WARNING: Macros may be not fully supported yet.
$tellraw @s [{"text":"[§a$(id)§7: §$(color)$(name)§r]","color":"yellow","click_event":{"action":"run_command","command":"/trigger quickplay set $(id)"},"hover_event":{"action":"show_text","value":{"text":"点击快速加入 §$(color)$(name)","color":"gold"}}}]
