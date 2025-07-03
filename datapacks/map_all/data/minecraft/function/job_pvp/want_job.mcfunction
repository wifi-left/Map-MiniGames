execute at @s run playsound ui.button.click player @s ~ ~ ~ 1 1 1
$scoreboard players set pvp.require board $(kill)
execute if score @s kill >= pvp.require board run function minecraft:job_pvp/start
execute unless score @s kill >= pvp.require board run tellraw @s ["\u00a7c击杀数量不足，你无法选择这个职业。这个职业需要",{score:{name:"pvp.require",objective:board},color:gold},"\u00a76击杀数"]
execute unless score @s kill >= pvp.require board at @s run playsound entity.enderman.teleport player @s ~ ~ ~ 1 1 1
$execute if score @s kill >= pvp.require board run function minecraft:live/job/$(job)