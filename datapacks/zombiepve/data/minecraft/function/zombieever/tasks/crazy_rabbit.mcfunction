##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @a[team=play.zombie] ["\n\u00a7b收到任务 \u00a7a",{"color":"yellow","text":"[发疯的兔子]","hoverEvent": {"action": "show_text","contents": [{"text":"\u00a7f寻找使兔子发疯的魔物，并击败它。\n\n\u00a77温馨提示：如果未找到魔术师，将无法解决此问题。\n当你找不到的时候，看看水里面？"}]}},"\u00a7a\n"]
scoreboard players set zombie.round board 11
function zombieever/rounds/11
scoreboard players set zombie.state state 1
# At least 16
summon minecraft:glow_squid 679 0 -83 {Tags:["pve.root","pve.zombie"],PersistenceRequired:1b,ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],CustomName:'"\\u00a7e兔子发疯罪魁祸首"',CustomNameVisible:1b,DeathLootTable:"minecraft:empty",active_effects:[{id:"glowing",duration:999999}],Health:30,attributes:[{base:1.0d,id:"generic.movement_speed"},{base:30d,id:"generic.max_health"}]}

data merge entity @e[tag=pve.title,limit=1] {CustomName:'"\\u00a7a发疯的兔子"'}
execute if score tmp board matches 18.. run playsound entity.player.levelup player @s ~ ~ ~ 2 0 1

