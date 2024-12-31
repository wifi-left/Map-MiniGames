clear @s minecart[custom_data~{gcar:1b}]
execute at @s run summon minecraft:pig ~ ~ ~ {CustomNameVisible:1b,Invulnerable:1b,Silent:1b,PersistenceRequired:1b,Tags:["GCAR","car.new"],DeathLootTable:"minecraft:empty",Saddle:1b,Team:"car.play",NoAI:0b,attributes:[{base:0.0d,id:"movement_speed"}]}
ride @s mount @e[tag=car.new,limit=1]
execute as @e[tag=car.new] run tag @s remove car.new
item replace entity @s weapon.offhand with carrot_on_a_stick[custom_data={gcar:2},custom_name='"\\u00a7a"',hide_tooltip={},unbreakable={},custom_model_data={floats:[16f]}] 1