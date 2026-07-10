execute if data entity @s {item:{components:{"minecraft:custom_data":{disaster.snow:"bomb_arrow"}}}} run function minecraft:disaster/snow/item_effects/bomb_arrow
execute if data entity @s {item:{components:{"minecraft:custom_data":{snow:1}}}} run function minecraft:snow/arrow_inground
execute if entity @s[tag=job_pvp.creeper.arrow] at @s run summon creeper ~ ~ ~ {powered:false,Fuse:0,Tags:["job_pvp.creeper"],DeathLootTable:"minecraft:empty",ignited:true,Invulnerable:true}
kill @s