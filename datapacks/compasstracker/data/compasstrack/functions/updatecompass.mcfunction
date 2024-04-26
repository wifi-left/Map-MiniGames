execute at @s run tag @p[team=play.sur,gamemode=survival] add sur.sel
clear @s compass
execute if entity @a[tag=sur.sel,limit=1] run item replace entity @s[team=play.sur.zom] hotbar.8 with minecraft:compass{LodestoneDimension:"minecraft:airworld",LodestonePos:{X:0,Y:0,Z:0},LodestoneTracked:0b,display:{Name:'"\\u00a7f玩家追踪指南针 \\u00a7c(请勿移动此物品)"',Lore:['"\\u00a77默认追踪离你最近的玩家"']}}
execute unless entity @a[tag=sur.sel,limit=1] run item replace entity @s[team=play.sur.zom] hotbar.8 with minecraft:compass{LodestoneDimension:"minecraft:airworld",LodestonePos:{X:0,Y:0,Z:0},LodestoneTracked:0b,display:{Name:'"\\u00a7f玩家追踪指南针 \\u00a78- \\u00a7c失去目标"',Lore:['"\\u00a77默认追踪离你最近的玩家"']}}
data modify storage compass:tmp Pos.X set from entity @a[tag=sur.sel,limit=1] Pos[0]
data modify storage compass:tmp Pos.Y set from entity @a[tag=sur.sel,limit=1] Pos[1]
data modify storage compass:tmp Pos.Z set from entity @a[tag=sur.sel,limit=1] Pos[2]
item modify entity @s hotbar.8 compasstrack:compassupdater
tag @a remove sur.sel