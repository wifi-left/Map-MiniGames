scoreboard players set bw.red.trap.1 board -1
scoreboard players set bw.red.trap.2 board -1
scoreboard players set bw.red.trap.3 board -1
scoreboard players set bw.blue.trap.1 board -1
scoreboard players set bw.blue.trap.2 board -1
scoreboard players set bw.blue.trap.3 board -1
scoreboard players set bw.green.trap.1 board -1
scoreboard players set bw.green.trap.2 board -1
scoreboard players set bw.green.trap.3 board -1
scoreboard players set bw.yellow.trap.1 board -1
scoreboard players set bw.yellow.trap.2 board -1
scoreboard players set bw.yellow.trap.3 board -1
scoreboard players reset * bw.tmp.ir
scoreboard players reset * bw.tmp.gd
scoreboard players reset * bw.tmp.dm
scoreboard players reset * bw.tmp.em
scoreboard players reset * bw.axe
scoreboard players reset * bw.pickaxe
scoreboard players reset * bw.armor
scoreboard players reset * pickblue
scoreboard players reset * pickgreen
scoreboard players reset * pickred
scoreboard players reset * pickyellow
tag @a remove bw.attack
tag @a remove bw.armor
tag @a remove bw.speed
tag @a remove bw.jump
tag @a remove bw.fasti
tag @a remove bw.fastii
tag @a remove bw.shears
tag @a remove bw.milk
tag @a remove bw.invul
scoreboard players reset @a bw.milk.t
scoreboard players reset @a bw.invul.t
scoreboard players set bw.state state 6
tag @a remove bw.play
gamemode spectator @a[tag=bw.player]
clear @a[tag=bw.player]
effect clear @a[tag=bw.player]
schedule function bedwars/after/tp 5s
forceload remove -216 300 -393 121
# 掉落物等一律按类型清理的实体都交给 clear_entities（只在起床范围内清）

bossbar set minigames:bedwars value 1
bossbar set minigames:bedwars max 1
bossbar set minigames:bedwars players @a[tag=bw.player]
bossbar set minigames:bedwars name ["\u00a7e\u00a7lBEDWARS 起床战争 \u00a77| \u00a7c游戏结束。"]

# 救援平台要先收回黏液再清标记；其余临时实体（火球 / 蠹虫 / 铁傀儡 / 僵尸 / 临时标记）统一走这里，
# 与游戏开始共用同一份清单
execute as @e[tag=bw.pf] at @s run function minecraft:bedwars/item/platform_retract
tag @a remove bw.scrolling
function minecraft:bedwars/resets/clear_entities

