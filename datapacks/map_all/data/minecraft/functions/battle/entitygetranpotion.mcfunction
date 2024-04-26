# tag=potion.speed,
# tag=potion.jump,
# tag=potion.strength,
# tag=potion.slowfall,
# tag=potion.resistance,
scoreboard players operation random board = @e[limit=1,tag=random_saying,sort=random,scores={board=1..8}] board
execute if score random board matches 1 run summon item ~ ~0.5 ~ {Item:{id:"minecraft:splash_potion",tag:{custom_potion_effects:[{id:"speed",duration:200,amplifier:0b,ambient:0b,show_particles:0b}],display:{Name:'"\\u00a7f速度药水"'}},Count:1b}}
execute if score random board matches 2 run summon item ~ ~0.5 ~ {Item:{id:"minecraft:splash_potion",tag:{custom_potion_effects:[{id:"slowness",duration:200,amplifier:0b,ambient:0b,show_particles:0b}],display:{Name:'"\\u00a7f缓慢药水"'}},Count:1b}}
execute if score random board matches 3 run summon item ~ ~0.5 ~ {Item:{id:"minecraft:splash_potion",tag:{custom_potion_effects:[{id:"haste",duration:200,amplifier:0b,ambient:0b,show_particles:0b}],display:{Name:'"\\u00a7f急迫药水"'}},Count:1b}}
execute if score random board matches 4 run summon item ~ ~0.5 ~ {Item:{id:"minecraft:splash_potion",tag:{custom_potion_effects:[{id:"mining_fatigue",duration:200,amplifier:1b,ambient:0b,show_particles:0b}],display:{Name:'"\\u00a7f挖掘疲劳药水"'}},Count:1b}}
execute if score random board matches 5 run summon item ~ ~0.5 ~ {Item:{id:"minecraft:splash_potion",tag:{custom_potion_effects:[{id:"strength",duration:200,amplifier:0b,ambient:0b,show_particles:0b}],display:{Name:'"\\u00a7f力量药水"'}},Count:1b}}
execute if score random board matches 6 run summon item ~ ~0.5 ~ {Item:{id:"minecraft:splash_potion",tag:{custom_potion_effects:[{id:"instant_health",duration:1,amplifier:0b,ambient:0b,show_particles:0b}],display:{Name:'"\\u00a7f治疗药水"'}},Count:1b}}
execute if score random board matches 7 run summon item ~ ~0.5 ~ {Item:{id:"minecraft:splash_potion",tag:{custom_potion_effects:[{id:"instant_damage",duration:1,amplifier:0b,ambient:0b,show_particles:0b}],display:{Name:'"\\u00a7f瞬间伤害药水"'}},Count:1b}}
execute if score random board matches 8 run summon item ~ ~0.5 ~ {Item:{id:"minecraft:splash_potion",tag:{custom_potion_effects:[{id:"jump_boost",duration:200,amplifier:0b,ambient:0b,show_particles:0b}],display:{Name:'"\\u00a7a跳跃药水"'}},Count:1b}}
# say hi~
kill @e[type=armor_stand,tag=battle.ranpotion]
