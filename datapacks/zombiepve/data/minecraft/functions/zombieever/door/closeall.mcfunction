##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# ### Door

# fill 373 22 -48 371 25 -48 minecraft:barrier
# fill 374 22 -49 370 25 -49 minecraft:iron_bars

# ## In
# # Left
# fill 369 21 -128 371 24 -128 minecraft:barrier
# fill 371 22 -127 369 23 -127 minecraft:iron_bars
# # Right
# fill 331 21 -128 329 24 -128 minecraft:barrier
# fill 329 22 -127 331 23 -127 iron_bars
# # Medium
# fill 353 22 -134 347 26 -134 minecraft:iron_bars keep

# tag @e[tag=zombie.spawn.now] remove zombie.spawn.now
# tag @e[tag=zombie.spawn.main] add zombie.spawn.now
forceload add 597 -111 714 1
execute as @e[tag=pve.event.block.fruit] at @s run setblock ~ ~ ~ minecraft:sweet_berry_bush[age=1]
execute as @e[tag=pve.event.block.fruit,limit=8,sort=random] at @s run setblock ~ ~ ~ minecraft:sweet_berry_bush[age=0]
kill @e[tag=pve.title]
forceload add 595 -41 495 -150
summon marker 630 9 -78 {Tags:["pve.title"],CustomName:'""'}
fill 594 3 -58 594 5 -60 minecraft:iron_bars
fill 637 13 -46 637 11 -47 minecraft:air
fill 637 13 -46 639 11 -46 minecraft:iron_bars

data merge block 597 11 1 {Items:[]}

data merge block 597 11 1 {Items:[{id:"minecraft:tripwire_hook",count:1,components:{"minecraft:custom_name":'"\\u00a7a钥匙"',"minecraft:lore":['"\\u00a7e用于打开大门的钥匙"'],"minecraft:custom_data":{lock:1}},Slot:13}]}

execute as @e[tag=pve.house.chest] at @s run data merge block ~ ~ ~ {Items:[],Lock:"ss114514",CustomName:'"\\u00a7r箱子"'}
fill 535 -51 -124 535 -49 -121 minecraft:iron_bars
fill 579 -9 -119 578 -10 -119 minecraft:air
fill 567 -9 -120 567 -10 -121 minecraft:iron_bars
fill 535 -38 -123 535 -40 -125 minecraft:cracked_deepslate_bricks
fill 504 -41 -117 503 -43 -117 minecraft:cracked_deepslate_bricks
setblock 496 -43 -104 air
setblock 497 -43 -104 air
setblock 513 -43 -112 minecraft:air
fill 527 -41 -102 527 -43 -100 minecraft:iron_bars
setblock 513 -43 -112 minecraft:chest{Items:[{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_data":{hp:50,gun:"pao",damage:300,bullet:380,cdtime:10,distance:40},"minecraft:custom_name":'"\\u00a7e\\u00a7kaaa\\u00a7a 高级魔法棒 \\u00a7e\\u00a7kaaa"',"minecraft:lore":['"\\u00a7b可使用次数：\\u00a7e380"','"\\u00a7bCD: \\u00a7e10tick"','"\\u00a7b伤害：\\u00a7e30.0 HP"','"\\u00a7b距离：\\u00a7e40 \\u00a7bblocks"','"\\u00a7b消耗能量：\\u00a7e50"'],"minecraft:custom_model_data":9},Slot:13},{id:"minecraft:experience_bottle",count:64,Slot:1}]}
setblock 496 -43 -104 minecraft:chest[type=left]{Items:[]}
setblock 497 -43 -104 minecraft:chest[type=right]{Items:[{id:"minecraft:tnt",count:1,Slot:0,components:{"minecraft:custom_name":'"\\u00a7c\\u00a7lTNT"',"minecraft:lore":['"\\u00a7e用于破坏地牢中的某一个墙壁"'],"minecraft:custom_data":{lock:3,flag:1}}},{id:"minecraft:tnt",count:1,Slot:1,components:{"minecraft:custom_name":'"\\u00a7c\\u00a7lTNT"',"minecraft:lore":['"\\u00a7e用于破坏地牢中的某一个墙壁"'],"minecraft:custom_data":{lock:3,flag:2}}}]}
kill @e[type=villager,tag=pve.npc]
kill @e[type=villager,tag=pve.npc.pre]
summon minecraft:villager 630 10 -94 {CustomName:'["\\u00a7e亚奇洛贝 \\u00a7a[NPC]\\u00a77 - 右键互动"]',Invulnerable:1b,NoAI:1b,Silent:1b,PersistenceRequired:1b,VillagerData:{profession:"minecraft:librarian",type:"minecraft:swamp"},Offers:{Recipes:[]},Tags:["pve.npc","pve.npc.yaqiluobei"],CustomNameVisible:1b}

setblock 681 6 -21 minecraft:barrier
forceload remove 595 -41 495 -150
forceload remove 597 -111 714 1

