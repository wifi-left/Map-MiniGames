tp @a[team=wait.zombie,gamemode=adventure] 370.0 22 -155 0 0
scoreboard players set zombie.state state 1
tellraw @a[team=wait.zombie] ["\u00a72\u00a7lZombie Day \u00a7e游戏开始！"]
execute if score zombie.type board matches 2 run tellraw @a[team=wait.zombie] ["\u00a7b模式：\u00a7c闯关模式"]
execute if score zombie.type board matches 2 run title @a[team=wait.zombie] subtitle ["\u00a7b模式：\u00a7c闯关模式"]
execute if score zombie.type board matches 1 run tellraw @a[team=wait.zombie] ["\u00a7b模式：\u00a7a村民保卫战"]
execute if score zombie.type board matches 1 run title @a[team=wait.zombie] subtitle ["\u00a7b模式：\u00a7a村民保卫战"]
title @a[team=wait.zombie] title ["\u00a72Zombie Day"]
scoreboard players reset * zombie.coin
playsound entity.firework_rocket.twinkle player @a[team=wait.zombie] ~ ~ ~ 1 1 1

scoreboard players set @a[team=wait.zombie] zombie.coin 100

team join play.zombie @a[team=wait.zombie]
scoreboard players set zombie.round board 0
function zombieever/door/closeall
kill @e[type=villager,tag=zombie.villagers]
kill @e[type=!player,tag=pve.zombie]
execute if score zombie.type board matches 1 as @e[tag=zombie.villager] at @s run summon villager ~ ~ ~ {Tags:["zombie.villagers"],NoAI:1b,PersistenceRequired:1b,Glowing:1b,VillagerData:{profession:"minecraft:none",type:"minecraft:snow"},Career:1,CareerLevel:26,Offers:{Recipes:[]},Rotation:[0.0f,0.0f],Health:20f,Attributes:[{Base:20d,Name:"generic.max_health"}],CustomNameVisible:1b,Team:"play.zombie"}

data merge block 363 22 -154 {Items:[]}
data merge block 363 21 -154 {Items:[]}
data merge block 362 22 -154 {Items:[]}
data merge block 362 21 -154 {Items:[]}

tellraw @a[team=play.zombie] ["\n\u00a7a   欢迎游玩 \u00a72\u00a7lZombie Day\u00a7a！\n   \u00a7b目前此游戏处于测试阶段，如发现 BUG 请及时反馈！\n\u00a7a   第一波僵尸将会在 \u00a7e15秒 \u00a7a后来临！\n"]
tellraw @a[team=play.zombie] ["\u00a76+100 Coins (开始游戏)"]
give @a[team=play.zombie] wooden_sword{Unbreakable:1b}
give @a[team=play.zombie] wooden_axe{Unbreakable:1b}
give @a[team=play.zombie] minecraft:carrot_on_a_stick{gun:1,bullet:500,cdtime:10,display:{Name:'"\\u00a7aShooter"',Lore:['"\\u00a7b子弹数量：\\u00a7e500"','"\\u00a7bCD: \\u00a7e10tick"','"\\u00a7b伤害：\\u00a7e3.0 HP"']}}
item replace entity @a[team=play.zombie] armor.head with leather_helmet{Unbreakable:1b}
item replace entity @a[team=play.zombie] armor.chest with leather_chestplate{Unbreakable:1b}
item replace entity @a[team=play.zombie] armor.legs with leather_leggings{Unbreakable:1b}
item replace entity @a[team=play.zombie] armor.feet with leather_boots{Unbreakable:1b}
scoreboard players set zombie.state state 2
schedule function zombieever/nextround 15s
bossbar set zombie:zombiecount name ["\u00a7a游戏开始，\u00a7e15 秒\u00a7a后僵尸来临。"]
kill @e[type=item,x=350,y=21,z=-81,distance=0..40]
tellraw @a[team=play.zombie,tag=GOABLE.SPEC] ["\n\u00a77  你已开启\u00a7b全局旁观者模式\u00a77。\n  \u00a77由于你进入游戏后会变为旁观模式，请使用 \u00a76/trigger hub\u00a77 返回大厅。\n  ",{"text":"\u00a7a\u00a7l点击此处，或者使用 \u00a76\u00a7l/trigger spec set 3 \u00a7a\u00a7l退出全局旁观者模式","bold":true,"clickEvent": {"action": "run_command","value": "/trigger spec set 3"},"hoverEvent": {"action": "show_text","contents": "\u00a7c点击此处退出全局旁观者模式"}},"\n"]
execute as @a[team=play.zombie,tag=GOABLE.SPEC] at @s run gamemode spectator