tag @s add seel

execute as @e[tag=hide.animals,tag=hide.cosplay] if score @s LRS_START_DJS = @a[tag=seel,limit=1] park.uuid run tag @s add shouldtp 
tag @s remove seel
# tp @e[tag=shouldtp] @s

# TODO: Summon block_display depend on block under players

# execute if score @s LRS_START_DJS matches 1 run summon minecraft:cat 335 65 -332 {DeathLootTable:"",Invulnerable:1b,PersistenceRequired:1b,Team:"hide.play.ani",Tags:["hianimal","hide.animals","neww"],NoAI:1b}
item replace block 0 2 0 container.0 with air
summon minecraft:block_display ~ ~ ~ {Invulnerable:1b,Team:"hide.play.ani",Tags:["hianimal","hide.animals","neww"],block_state:{Name:"minecraft:dirt"}}
execute at @s align xyz if block ~ ~-0.5 ~ #hideseek run tellraw @s ["\n\u00a7a   \u00a7l你的新身份为： 泥土","\n"]
tag @e[tag=neww] add hide.cosplay
scoreboard players operation @e[tag=neww] LRS_START_DJS = @s park.uuid

tag @e[tag=neww] remove neww
tag @e remove shouldtp 