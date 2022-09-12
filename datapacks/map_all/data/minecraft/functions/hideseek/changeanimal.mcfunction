tag @s add seel

execute as @e[tag=hide.animals,tag=hide.cosplay] if score @s LRS_START_DJS = @a[tag=seel,limit=1] park.uuid run tag @s add shouldtp 
tag @s remove seel
# tp @e[tag=shouldtp] @s
scoreboard players reset @e[tag=shouldtp,limit=1]
kill @e[tag=shouldtp,limit=1]
execute if score @s LRS_START_DJS matches 11.. run scoreboard players set @s LRS_START_DJS 1

execute if score @s LRS_START_DJS matches 1 run summon minecraft:cat 335 65 -332 {DeathLootTable:"",Invulnerable:1b,PersistenceRequired:1b,Team:"hide.play.ani",Tags:["hianimal","hide.animals","neww"],NoAI:1b}
execute if score @s LRS_START_DJS matches 2 run summon minecraft:cow 335 65 -332 {DeathLootTable:"",Invulnerable:1b,PersistenceRequired:1b,Team:"hide.play.ani",Tags:["hianimal","hide.animals","neww"],NoAI:1b}
execute if score @s LRS_START_DJS matches 3 run summon minecraft:chicken 335 65 -332 {DeathLootTable:"",Invulnerable:1b,PersistenceRequired:1b,Team:"hide.play.ani",Tags:["hianimal","hide.animals","neww"],NoAI:1b}
execute if score @s LRS_START_DJS matches 4 run summon minecraft:mooshroom 335 65 -332 {DeathLootTable:"",Invulnerable:1b,PersistenceRequired:1b,Team:"hide.play.ani",Tags:["hianimal","hide.animals","neww"],NoAI:1b}
execute if score @s LRS_START_DJS matches 5 run summon minecraft:panda 335 65 -332 {DeathLootTable:"",Invulnerable:1b,PersistenceRequired:1b,Team:"hide.play.ani",Tags:["hianimal","hide.animals","neww"],NoAI:1b}
execute if score @s LRS_START_DJS matches 6 run summon minecraft:squid 335 65 -332 {DeathLootTable:"",Invulnerable:1b,PersistenceRequired:1b,Team:"hide.play.ani",Tags:["hianimal","hide.animals","neww"],NoAI:1b}
execute if score @s LRS_START_DJS matches 7 run summon minecraft:cod 335 65 -332 {DeathLootTable:"",Invulnerable:1b,PersistenceRequired:1b,Team:"hide.play.ani",Tags:["hianimal","hide.animals","neww"],NoAI:1b}
execute if score @s LRS_START_DJS matches 8 run summon minecraft:salmon 335 65 -332 {DeathLootTable:"",Invulnerable:1b,PersistenceRequired:1b,Team:"hide.play.ani",Tags:["hianimal","hide.animals","neww"],NoAI:1b}
execute if score @s LRS_START_DJS matches 9 run summon minecraft:goat 335 65 -332 {DeathLootTable:"",Invulnerable:1b,PersistenceRequired:1b,Team:"hide.play.ani",Tags:["hianimal","hide.animals","neww"],NoAI:1b}
execute if score @s LRS_START_DJS matches 10.. run summon minecraft:sheep 335 65 -332 {DeathLootTable:"",Invulnerable:1b,PersistenceRequired:1b,Team:"hide.play.ani",Tags:["hianimal","hide.animals","neww"],NoAI:1b}

tag @e[tag=neww] add hide.cosplay
scoreboard players operation @e[tag=neww] LRS_START_DJS = @s park.uuid
tellraw @s ["\n\u00a7a   \u00a7l你的新身份为： ",{"selector":"@e[tag=neww]"},"\n"]

tag @e[tag=neww] remove neww
tag @e remove shouldtp 