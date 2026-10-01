team modify disaster.snow friendlyFire true

scoreboard players set disaster.snow.state state 25
scoreboard players set disaster.snow.time board 30
## 速度保持上限 10、不再增大；本窗口（30s）结束后开始缩圈，之后每 5s 缩一圈
scoreboard players set disaster.snow.shrink board 0
scoreboard players set disaster.snow.radius board 18
execute as @a[team=disaster.snow] at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 1 0
tellraw @a[team=disaster.snow] ["\n\u00a7e\u00a7l事件\n\u00a7cPVP已启用\n\u00a7b安全区将在 30s 后开始缩小！\n"]
title @a[team=disaster.snow] title "\u00a7b\u00a7lPVP已启用"
title @a[team=disaster.snow] subtitle "\u00a7e小心你的同伴们！"

execute as @a[team=disaster.snow,gamemode=adventure] run function minecraft:disaster/snow/give_item

effect give @a[team=disaster.snow] regeneration 30 0 true
