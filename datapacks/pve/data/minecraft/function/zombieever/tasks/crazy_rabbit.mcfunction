##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @a[team=play.zombie] ["\n§b收到任务 §a",{"color":"yellow","text":"[发疯的兔子]","hover_event":{"action":"show_text","value":[{"text":"§f寻找使兔子发疯的魔物，并击败它。\n\n§7温馨提示：如果未找到魔术师，将无法解决此问题。\n当你找不到的时候，看看水里面？"}]}},"§a\n"]
scoreboard players set zombie.round board 11
function zombieever/rounds/11
scoreboard players set zombie.state state 1
# At least 16
summon minecraft:glow_squid 679 0 -83 {Tags:["pve.root","pve.zombie"],PersistenceRequired:1b,CustomName:"§e兔子发疯罪魁祸首",CustomNameVisible:1b,DeathLootTable:"minecraft:empty",active_effects:[{id:"glowing",duration:999999}],Health:30,attributes:[{base:1.0d,id:"movement_speed"},{base:30d,id:"max_health"}],drop_chances:{feet:0.0f,legs:0.0f,chest:0.0f,head:0.0f,mainhand:0.0f,offhand:0.0f}}


## WARNING: The transformation may cause problem. You might need to modify it by yourself.
data merge entity @e[tag=pve.title,limit=1] {CustomName:"\u00a7a发疯的兔子"}
execute if score tmp board matches 18.. run playsound entity.player.levelup player @s ~ ~ ~ 2 0 1


