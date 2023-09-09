tag @e[tag=random_game,limit=1,sort=random] add hide.sel
scoreboard players operation hide.ranani board = @e[tag=hide.sel,limit=1] board
tag @e remove hide.sel
execute if score hide.ranani board matches 1 run summon minecraft:block_display 501 -1 -365 {DeathLootTable:"",Invulnerable:1b,PersistenceRequired:1b,Team:"hide.play.ani",Tags:["hide.animals","neww","hide.wtf"],block_state:{Name:"minecraft:oak_leaves"}}
execute if score hide.ranani board matches 2 run summon minecraft:block_display 501 -1 -365 {DeathLootTable:"",Invulnerable:1b,PersistenceRequired:1b,Team:"hide.play.ani",Tags:["hide.animals","neww","hide.wtf"],block_state:{Name:"minecraft:stone"}}
execute if score hide.ranani board matches 3 run summon minecraft:block_display 501 -1 -365 {DeathLootTable:"",Invulnerable:1b,PersistenceRequired:1b,Team:"hide.play.ani",Tags:["hide.animals","neww","hide.wtf"],block_state:{Name:"minecraft:stone_bricks"}}
execute if score hide.ranani board matches 4 run summon minecraft:block_display 501 -1 -365 {DeathLootTable:"",Invulnerable:1b,PersistenceRequired:1b,Team:"hide.play.ani",Tags:["hide.animals","neww","hide.wtf"],block_state:{Name:"minecraft:white_wool"}}
execute if score hide.ranani board matches 5 run summon minecraft:block_display 501 -1 -365 {DeathLootTable:"",Invulnerable:1b,PersistenceRequired:1b,Team:"hide.play.ani",Tags:["hide.animals","neww","hide.wtf"],block_state:{Name:"minecraft:spruce_planks"}}
execute if score hide.ranani board matches 6 run summon minecraft:block_display 501 -1 -365 {DeathLootTable:"",Invulnerable:1b,PersistenceRequired:1b,Team:"hide.play.ani",Tags:["hide.animals","hide.wtf","neww"],block_state:{Name:"minecraft:moss_carpet"}}
execute if score hide.ranani board matches 7 run summon minecraft:block_display 501 -1 -365 {DeathLootTable:"",Invulnerable:1b,PersistenceRequired:1b,Team:"hide.play.ani",Tags:["hide.animals","hide.wtf","neww"],block_state:{Name:"minecraft:dandelion"}}
execute if score hide.ranani board matches 8 run summon minecraft:block_display 501 -1 -365 {DeathLootTable:"",Invulnerable:1b,PersistenceRequired:1b,Team:"hide.play.ani",Tags:["hide.animals","hide.wtf","neww"],block_state:{Name:"minecraft:grass"}}
execute if score hide.ranani board matches 9 run summon minecraft:block_display 501 -1 -365 {DeathLootTable:"",Invulnerable:1b,PersistenceRequired:1b,Team:"hide.play.ani",Tags:["hide.animals","neww","hide.wtf"],block_state:{Name:"minecraft:grass_block"}}
execute if score hide.ranani board matches 10.. run summon minecraft:block_display 501 -1 -365 {DeathLootTable:"",Invulnerable:1b,PersistenceRequired:1b,Team:"hide.play.ani",Tags:["hide.animals","neww","hide.wtf"],block_state:{Name:"minecraft:dirt"}}
# execute if score hide.ranani board matches 1
execute as @e[tag=neww] run spreadplayers 468.0 -364.0 0 40 under 20 false @s
execute as @e[tag=neww] at @s align xyz run tp @s ~ ~ ~ 
tag @e[tag=neww] remove neww