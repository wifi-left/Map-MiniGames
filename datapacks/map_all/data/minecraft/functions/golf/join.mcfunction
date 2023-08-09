# team join golf @s
# tellraw @a [{"selector":"@s"},"\u00a7a 加入了\u00a7d高尔夫游戏\u00a7a。"]
# title @s title ["\u00a7dGOLF 高尔夫游戏"]
# title @s subtitle ["\u00a7aShoot the \u00a7eBall \u00a7ainto the \u00a7bHole"]
# tellraw @s ["\u00a7d\u00a7lGOLF 高尔夫游戏 ＞ \n\u00a7a将 \u00a7eBall \u00a7a射进 \u00a7bHole \u00a7a中。\n"]
# execute in minecraft:golfworld run tp @s -121 -60 115 90 0
playsound entity.player.levelup player @s ~ ~ ~ 10 1 1
# clear @s
# effect clear @s
# execute if score golf.state state matches 1.. run function minecraft:golf/spec
# effect give @s instant_health 2 25 true
# tag @s remove golf.waitshoot
# tellraw @s[tag=GOABLE.SPEC] ["\n\u00a77  你已开启\u00a7b全局旁观者模式\u00a77。\n  \u00a77由于你进入游戏后会变为旁观模式，请使用 \u00a76/trigger hub\u00a77 返回大厅。\n  ",{"text":"\u00a7a\u00a7l点击此处，或者使用 \u00a76\u00a7l/trigger spec set 3 \u00a7a\u00a7l退出全局旁观者模式","bold":true,"clickEvent": {"action": "run_command","value": "/trigger spec set 3"},"hoverEvent": {"action": "show_text","contents": "\u00a7c点击此处退出全局旁观者模式"}},"\n"]
# execute as @s[tag=GOABLE.SPEC] at @s run gamemode spectator
tellraw @s ["\n\u00a7c仍在制作，敬请期待。\n"]