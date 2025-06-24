##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# tag=potion.speed,
# tag=potion.jump,
# tag=potion.strength,
# tag=potion.slowfall,
# tag=potion.resistance,
execute store result score random board run random value 1..8
execute if score random board matches 1 run summon item ~ ~0.5 ~ {Item:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{custom_effects:[{id:"speed",duration:200,amplifier:0b,ambient:false,show_particles:false}]},"minecraft:custom_name":"\u00a7f速度药水"}}}
execute if score random board matches 2 run summon item ~ ~0.5 ~ {Item:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{custom_effects:[{id:"slowness",duration:200,amplifier:0b,ambient:false,show_particles:false}]},"minecraft:custom_name":"\u00a7f缓慢药水"}}}
execute if score random board matches 3 run summon item ~ ~0.5 ~ {Item:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{custom_effects:[{id:"haste",duration:200,amplifier:0b,ambient:false,show_particles:false}]},"minecraft:custom_name":"\u00a7f急迫药水"}}}
execute if score random board matches 4 run summon item ~ ~0.5 ~ {Item:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{custom_effects:[{id:"mining_fatigue",duration:200,amplifier:1b,ambient:false,show_particles:false}]},"minecraft:custom_name":"\u00a7f挖掘疲劳药水"}}}
execute if score random board matches 5 run summon item ~ ~0.5 ~ {Item:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{custom_effects:[{id:"strength",duration:200,amplifier:0b,ambient:false,show_particles:false}]},"minecraft:custom_name":"\u00a7f力量药水"}}}
execute if score random board matches 6 run summon item ~ ~0.5 ~ {Item:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{custom_effects:[{id:"instant_health",duration:1,amplifier:0b,ambient:false,show_particles:false}]},"minecraft:custom_name":"\u00a7f治疗药水"}}}
execute if score random board matches 7 run summon item ~ ~0.5 ~ {Item:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{custom_effects:[{id:"instant_damage",duration:1,amplifier:0b,ambient:false,show_particles:false}]},"minecraft:custom_name":"\u00a7f瞬间伤害药水"}}}
execute if score random board matches 8 run summon item ~ ~0.5 ~ {Item:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{custom_effects:[{id:"jump_boost",duration:200,amplifier:0b,ambient:false,show_particles:false}]},"minecraft:custom_name":"\u00a7a跳跃药水"}}}
# say hi~
kill @e[type=armor_stand,tag=battle.ranpotion]


