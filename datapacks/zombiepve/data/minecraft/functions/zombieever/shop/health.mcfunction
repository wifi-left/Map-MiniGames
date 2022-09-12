#/give @p minecraft:splash_potion{CustomPotionEffects:{Id:6,Duration:20,Amplifier:2,ShowParticles:1},CustomPotionColor:16711680}
execute if score @s zombie.coin matches 1000.. run tag @s add buy.pass
execute as @s[tag=buy.pass] run give @p minecraft:splash_potion{CustomPotionEffects:[{Id:6,Duration:20,Amplifier:1,ShowParticles:1}],CustomPotionColor:16711680,display:{Name:'"\\u00a7c生命回复药水"'}}
execute as @s[tag=buy.pass] run scoreboard players remove @s zombie.coin 1000
execute as @s[tag=buy.pass] run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 1 1
execute as @s[tag=!buy.pass] run playsound entity.enderman.teleport player @s ~ ~ ~ 1 0 1
execute as @s[tag=!buy.pass] run tellraw @s ["\u00a7c购买失败！金币不够。"]
execute as @s[tag=buy.pass] run tellraw @s ["\u00a7a购买成功！"]
tag @s remove buy.pass