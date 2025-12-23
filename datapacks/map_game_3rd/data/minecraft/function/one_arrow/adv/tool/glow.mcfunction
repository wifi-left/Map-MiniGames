advancement revoke @s only one_arrow/tool_glow
effect give @a[team=one_arrow,gamemode=adventure,distance=1..12] glowing 3 25 true
playsound ui.button.click player @s ~ ~ ~ 1 1 1
tellraw @a[team=one_arrow,gamemode=adventure,distance=1..12] ["\u00a7e你发光了 3s(道具效果)"]
execute if entity @a[team=one_arrow,gamemode=adventure,distance=1..12] run tellraw @s ["\u00a7e你使用了道具，并且发现了玩家：",{selector:"@a[team=one_arrow,gamemode=adventure,distance=1..8]"}]
execute unless entity @a[team=one_arrow,gamemode=adventure,distance=1..12] run tellraw @s ["\u00a7e你使用了道具，但没有发现玩家。"]