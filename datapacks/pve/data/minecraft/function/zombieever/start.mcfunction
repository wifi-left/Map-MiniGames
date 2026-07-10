##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# forceload add 393 30 304 -160
forceload add 656 -41 596 -112
forceload add 585 -67 495 -154

# 难度：zombie.type board 0简单 1困难

tp @a[team=wait.zombie,gamemode=adventure] 630 10 -78 -180 0
scoreboard players set zombie.state state 2
tellraw @a[team=wait.zombie] ["§2§lZombie Day §e游戏开始！"]
execute if score zombie.type board matches 2 run tellraw @a[team=wait.zombie] ["§b模式：§c困难模式"]
execute if score zombie.type board matches 2 run title @a[team=wait.zombie] subtitle ["\u00a7b模式：\u00a7c困难"]
execute if score zombie.type board matches 1 run tellraw @a[team=wait.zombie] ["§b模式：§a简单模式"]
execute if score zombie.type board matches 1 run title @a[team=wait.zombie] subtitle ["\u00a7b模式：\u00a7a简单"]
title @a[team=wait.zombie] title ["\u00a72Zombie Day"]
scoreboard players reset * zombie.coin
playsound entity.firework_rocket.twinkle player @a[team=wait.zombie] ~ ~ ~ 1 1 1

xp set @a[team=wait.zombie] 0 points
xp set @a[team=wait.zombie] 0 levels


scoreboard players set @a[team=wait.zombie] zombie.coin 100

team join play.zombie @a[team=wait.zombie]
scoreboard players set zombie.round board 0
function zombieever/door/closeall
kill @e[type=villager,tag=zombie.villagers]
kill @e[type=!player,tag=pve.zombie]
execute if score zombie.type board matches 1 as @e[tag=zombie.villager] at @s run summon villager ~ ~ ~ {Tags:["zombie.villagers"],NoAI:1b,PersistenceRequired:1b,Glowing:1b,VillagerData:{profession:"minecraft:none",type:"minecraft:snow"},Offers:{Recipes:[]},Rotation:[0.0f,0.0f],Health:20f,CustomNameVisible:1b,Team:"play.zombie",attributes:[{base:20d,id:"max_health"}]}

tellraw @a[team=play.zombie] ["\n§a   欢迎游玩 §2§lZombie Day§a！\n   §b目前此游戏处于测试阶段，如发现 BUG 请及时反馈！\n§a   第一波僵尸将会在 §e15秒 §a后来临！\n"]

scoreboard players set zombie.state state 2
function zombieever/talks/pre/1
kill @e[type=item,x=628,y=39,z=-82,distance=0..60]
kill @e[type=item,x=536,y=-24,z=-107,distance=0..80]
kill @e[type=experience_orb,x=628,y=39,z=-82,distance=0..60]
kill @e[type=experience_orb,x=536,y=-24,z=-107,distance=0..80]
tellraw @a[team=play.zombie,tag=GLOBAL.SPEC] ["\n§7  你已开启§b全局旁观者模式§7。\n  §7由于你进入游戏后会变为旁观模式，请使用 §6/trigger hub§7 返回大厅。\n  ",{"text":"§a§l点击此处，或者使用 §6§l/trigger spec set 3 §a§l退出全局旁观者模式","bold":true,"click_event":{"action":"run_command","command":"/trigger spec set 3"},"hover_event":{"action":"show_text","value":"§c点击此处退出全局旁观者模式"}},"\n"]
execute as @a[team=play.zombie,tag=GLOBAL.SPEC] at @s run gamemode spectator

scoreboard players add globle globle.game 1
scoreboard players operation zombie globle.game = globle globle.game
scoreboard players operation @a[team=play.zombie] globle.game = zombie globle.game

