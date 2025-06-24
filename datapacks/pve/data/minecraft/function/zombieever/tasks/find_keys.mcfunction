##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# 冈里丝戴布
# 瑞斯梅基米
# 瑞达布利斯
# 希里蕾恩眼
# 帕由瑞露温
# 克娜登莱鲁
# 木德雷卡拉
# 玛克克夫达
# 里奥克娜莱
# 蜜斯莱哈雅
# 托尔巴登利
# 那尔玛沃温
# 兹丽贝恩纳
# 卡维露雅尔
# 康尔尔萨妮
# 泽克爱罗提

forceload add 597 -45 714 1
tellraw @a[team=play.zombie] ["§e亚奇洛贝：§f听说，冈里丝戴布先生很喜欢§e把贵重物品藏在自己的§d樱花树花园§e当中§f。"]
tellraw @a[team=play.zombie] ["\n§b收到任务 §a",{"color":"green","text":"[寻找钥匙]","hover_event":{"action":"show_text","value":[{"text":"§f寻找打开要塞的钥匙，并顺便打开冈里丝戴布的宅门。\n\n§7温馨提示：存放东西的箱子并不会上锁。"}]}},"§a\n"]

## WARNING: The transformation may cause problem. You might need to modify it by yourself.
execute as @e[tag=pve.house.chest] at @s run data merge block ~ ~ ~ {Items:[],lock:{items:["minecraft:bedrock"],components:{"minecraft:custom_name":'"娃娃的wer114514"'}},CustomName:"\u00a7r箱子"}

execute as @e[tag=pve.house.chest,limit=1,sort=random] at @s run tag @s add pve.unlock
## WARNING: The transformation may cause problem. You might need to modify it by yourself.
execute as @e[tag=pve.unlock] at @s run data merge block ~ ~ ~ {Items:[{id:"minecraft:tripwire_hook",count:1,components:{"minecraft:custom_name":"\u00a7e地牢钥匙","minecraft:lore":["\u00a77用于打开地牢的钥匙"],"minecraft:custom_data":{lock:2}},Slot:13}],CustomName:"\u00a77貌似另外一个钥匙藏在樱花花园的角落里？"}
execute as @e[tag=pve.unlock] at @s run data remove block ~ ~ ~ lock
execute as @e[tag=pve.unlock] run tag @s remove pve.unlock

## WARNING: The transformation may cause problem. You might need to modify it by yourself.
data merge block 597 11 1 {Items:[{id:"minecraft:tripwire_hook",count:1,components:{"minecraft:custom_name":"\u00a7a大门钥匙","minecraft:lore":["\u00a7e用于打开大门的钥匙"],"minecraft:custom_data":{lock:1}},Slot:13}]}
forceload remove 597 -45 714 1
# 召唤僵尸
scoreboard players set zombie.round board 13
function zombieever/rounds/13

## WARNING: The transformation may cause problem. You might need to modify it by yourself.
data merge entity @e[tag=pve.title,limit=1] {CustomName:"\u00a76寻找钥匙"}

scoreboard players set zombie.state state 1
execute if score tmp board matches 18.. run playsound entity.player.levelup player @s ~ ~ ~ 2 0 1


