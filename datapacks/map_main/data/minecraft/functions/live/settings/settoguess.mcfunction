data merge block 36 8 0 {Text2:"[{\"text\":\"Normal Mode\",\"color\":\"aqua\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function minecraft:live/settings/settonormal\"}}]",Text3:"[{\"text\":\"\\u00a7a[\\u00a76Guess Killer\\u00a7a]\",\"color\":\"gold\"}]"}
playsound minecraft:ui.button.click player @s
scoreboard players set live.set.mode live.all 1
team modify play.live.runner friendlyFire false
tellraw @a[team=wait.live] ["\u00a7a[INFO] \u00a7b模式变成了 \u00a76[Guess Killer]\u00a7b.\n\u00a7e在这个模式中，Killer 不会获得发光效果。"]