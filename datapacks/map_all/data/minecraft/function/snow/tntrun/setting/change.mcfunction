##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
playsound ui.button.click player @s
execute if score snow.tntrun board matches 1..1 run tellraw @s ["§a[Settings] §bNow the game mode changes to §eTNTRUN §bmode."]
execute unless score snow.tntrun board matches 1..1 unless score snow.tntrun board matches 2..2 run tellraw @s ["§a[Settings] §bNow the game mode changes to §eNormal §bmode."]
execute if score snow.tntrun board matches 2..2 run tellraw @s ["§a[Settings] §bNow the game mode changes to §eDig and Run §bmode."]


