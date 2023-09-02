tag @s add seel

execute as @e[tag=hide.animals,tag=hide.cosplay] if score @s LRS_START_DJS = @a[tag=seel,limit=1] park.uuid run tag @s add shouldtp 
tag @s remove seel
# tp @e[tag=shouldtp] @s

# TODO: Summon block_display depend on block under players

# execute if score @s LRS_START_DJS matches 1 run summon minecraft:cat 335 65 -332 {DeathLootTable:"",Invulnerable:1b,PersistenceRequired:1b,Team:"hide.play.ani",Tags:["hianimal","hide.animals","neww"],NoAI:1b}
item replace block 0 2 0 container.0 with air
execute at @s align xyz if block ~ ~-0.5 ~ #hideseek run summon minecraft:block_display ~ ~ ~ {Invulnerable:1b,Team:"hide.play.ani",Tags:["hianimal","hide.animals","neww"],block_state:{Name:"minecraft:diamond_block"}}
execute at @s align xyz if block ~ ~-0.5 ~ #hideseek run loot replace block 0 2 0 container.0 mine ~ ~-0.5 ~ shears{Enchantments:[{id:"minecraft:silk_touch",lvl:1}]}
execute if data block 0 2 0 Items[0] as @e[tag=neww] run data modify entity @s block_state.Name set from block 0 2 0 Items[0].id
execute at @s align xyz if block ~ ~-0.5 ~ #hideseek run scoreboard players reset @e[tag=shouldtp,limit=1]
execute at @s align xyz if block ~ ~-0.5 ~ #hideseek run kill @e[tag=shouldtp,limit=1]
tag @e[tag=neww] add hide.cosplay
scoreboard players operation @e[tag=neww] LRS_START_DJS = @s park.uuid
execute at @s align xyz if block ~ ~-0.5 ~ #hideseek run tellraw @s ["\n\u00a7a   \u00a7l你的新身份为： ",{"nbt":"Items[0].id","block":"0 2 0","color": "gold"},"\n"]
execute at @s align xyz unless block ~ ~-0.5 ~ #hideseek run tellraw @s ["\n\u00a7a   \u00a7l无法切换：方块不支持\n"]

tag @e[tag=neww] remove neww
tag @e remove shouldtp 