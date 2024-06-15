##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
playsound ui.button.click player @s
execute if score snow.tntrun state matches 1..1 run tellraw @s ["\u00a7a[Settings] \u00a7bNow the game mode changes to \u00a7eTNTRUN \u00a7bmode."]
execute unless score snow.tntrun state matches 1..1 unless score snow.tntrun state matches 2..2 run tellraw @s ["\u00a7a[Settings] \u00a7bNow the game mode changes to \u00a7eNormal \u00a7bmode."]
execute if score snow.tntrun state matches 2..2 run tellraw @s ["\u00a7a[Settings] \u00a7bNow the game mode changes to \u00a7eDig and Run \u00a7bmode."]

