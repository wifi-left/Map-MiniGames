##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 


## TNT 基本信息
# 威力：默认 4
# 爆炸可以破坏周围的方块。
# 爆炸破坏方块的基本方式是从爆炸中心向周围发射出1352条向外延伸的射线，并清除射线上的方块。
# 这里以P表示爆炸威力，R表示爆炸抗性，n表示射线采样衰减的段数。下文同。
# 假设围绕爆炸中心存在一个立方体，立方体外表面划分为16×16×16的网格。则爆炸中心到网格上每个交点都会形成一条射线，总计1352条射线。
# 每条射线都有一个初始强度：I0 = (1.0±0.3)×P。
# 射线沿自身方向每前进0.3格（一段），强度衰减0.225：In+1 = In-0.3×0.75 = In-0.225；
# 穿过非空气方块时，强度值进一步衰减：In+1 = In-[0.225+(R+0.3)×0.3]。
# 任何衰减分段采样点上未能使射线强度衰减于0的方块都会被破坏。
# 爆炸对方块的效果只考虑方块的爆炸抗性，即使方块的形状或性质允许实体通过，如水、台阶和蜘蛛网。
# 最大爆炸半径:6.9（默认）
summon marker ~ ~ ~ {Tags:["cmd.tnt","cmd.tnt.spawn"]}
scoreboard players set tnt.round.x board 0
summon creeper ~ ~ ~ {DeathLootTable:"",Tags:["cmd.tnt.boom"],fuse:0,CustomName:'["\\u00a7c\\u00a7lTNT SHEEP"]',CustomNameVisible:1b,Invulnerable:1b,Silent:1b,PersistenceRequired:1b,ignited:true,ExplosionRadius:4b,attributes:[{base:1d,id:"generic.max_health"},{base:1d,id:"generic.knockback_resistance"},{base:0d,id:"generic.movement_speed"},{base:1d,id:"generic.follow_range"},{base:0d,id:"generic.attack_damage"},{base:1d,id:"generic.attack_speed"},{base:1d,id:"generic.armor"},{base:1d,id:"generic.armor_toughness"}]}
execute as @e[tag=cmd.tnt.spawn] at @s run tp @s ~ ~ ~ 0 -90
execute as @e[tag=cmd.tnt.spawn] run function cmdtnt:tnt/roundandshoot_x
execute run playsound entity.generic.explode block @a ~ ~ ~ 6 0.7 0
particle minecraft:explosion ~ ~ ~ 1 1 1 1 10 normal
execute as @e[tag=cmd.tnt.boom] at @s run kill @e[type=item,distance=0..1.2]
execute as @e[tag=cmd.tnt.boom] at @s run function cmdtnt:tnt/lootblock
kill @e[tag=cmd.tnt]
