##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
data modify block 36 8 0 front_text.messages[1] set value "[{\"text\":\"\\u00a7a[\\u00a7bNormal Mode\\u00a7a]\",\"color\":\"aqua\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function minecraft:live/settings/settoguess\"}}]"
data modify block 36 8 0 front_text.messages[2] set value "[{\"text\":\"Guess Killer\",\"color\":\"gold\"}]"
playsound minecraft:ui.button.click player @s
scoreboard players set live.set.mode live.all 0
tellraw @a[team=wait.live] ["\u00a7a[INFO] \u00a7b模式变成了 \u00a7d[Normal Mode]\u00a7b.\n\u00a7e在这个模式中，杀手会发光！你可以轻松辨别！"]
team modify play.live.runner friendlyFire false
