spreadplayers -151 -5 0 30 under 0 false @s
execute at @s run summon pig ~ ~ ~ {NoAI:true,Invulnerable:true,equipment:{saddle:{id:"saddle"}},drop_chances:{saddle:0},DeathLootTable:"empty",Tags:["sneak.mount","sneak.new"],attributes:[{base:0.5,id:"movement_speed"}]}
ride @s mount @e[tag=sneak.new,limit=1]
item replace entity @s weapon.offhand with carrot_on_a_stick[custom_data={sneak:1},tooltip_display={hide_tooltip:true}]
tag @e[tag=sneak.new] remove sneak.new