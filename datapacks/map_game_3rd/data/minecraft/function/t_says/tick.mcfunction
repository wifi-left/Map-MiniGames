kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{"douzi":1}}}}]
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{"t_says.equipment":1}}}}]
execute as @a[team=t_says,gamemode=adventure] at @s as @e[type=item,distance=..5] unless data entity @s {Item:{components:{"minecraft:custom_data":{"t_says_can_throw":true}}}} run kill @s
execute if score t_says.state state matches 1 run function minecraft:t_says/judge/judging
execute if score t_says.state state matches 3 run function minecraft:t_says/show_msg
execute as @a[team=t_says,gamemode=adventure] at @s if block ~ ~-1 ~ black_terracotta run tp @s 183 22 373

## "被箭雨射中"（id 80）：把常驻的 100% 减伤换成"低抗性 + 吸收"，
## 既保证箭矢能真的造成伤害（否则命中判定永远触发不了），又不会把人射死
execute if score t_says.scene board matches 80 run effect clear @a[team=t_says] resistance
execute if score t_says.scene board matches 80 run effect give @a[team=t_says] resistance 2 0 true
execute if score t_says.scene board matches 80 run effect give @a[team=t_says] absorption 4 1 true

## 击杀类任务：先派发再清零（同下面的物品使用类）
execute as @a[scores={t_says.kills=1..}] at @s run function minecraft:t_says/action/kill_mob

## 物品使用类任务：先按统计分派（趁分数还在），再统一清零，避免跨局残留脏分
execute as @a[scores={t_says.egg=1..}] at @s run function minecraft:t_says/action/use_egg
execute as @a[scores={t_says.snowball=1..}] at @s run function minecraft:t_says/action/use_snowball
execute as @a[scores={t_says.bow=1..}] at @s run function minecraft:t_says/action/use_bow
execute as @a[scores={t_says.rod=1..}] at @s run function minecraft:t_says/action/use_rod
execute as @a[scores={t_says.bread=1..}] at @s run function minecraft:t_says/action/eat_bread
execute as @a[scores={t_says.potion=1..}] at @s run function minecraft:t_says/action/drink_potion
execute as @a[scores={t_says.wool=1..}] at @s run function minecraft:t_says/action/place_wool

scoreboard players reset @a t_says.egg
scoreboard players reset @a t_says.snowball
scoreboard players reset @a t_says.bow
scoreboard players reset @a t_says.rod
scoreboard players reset @a t_says.bread
scoreboard players reset @a t_says.potion
scoreboard players reset @a t_says.wool
scoreboard players reset @a t_says.kills