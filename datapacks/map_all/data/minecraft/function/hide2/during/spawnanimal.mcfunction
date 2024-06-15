##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tag @e[tag=random_game,limit=1,sort=random] add hide.sel
scoreboard players operation hide.ranani board = @e[tag=hide.sel,limit=1] board
tag @e remove hide.sel
execute if score hide.ranani board matches 1 run summon minecraft:cat 335 65 -332 {DeathLootTable:"",Invulnerable:1b,PersistenceRequired:1b,Team:"hide.play.ani",Tags:["hide.animals","neww"]}
execute if score hide.ranani board matches 2 run summon minecraft:cow 335 65 -332 {DeathLootTable:"",Invulnerable:1b,PersistenceRequired:1b,Team:"hide.play.ani",Tags:["hide.animals","neww"]}
execute if score hide.ranani board matches 3 run summon minecraft:chicken 335 65 -332 {DeathLootTable:"",Invulnerable:1b,PersistenceRequired:1b,Team:"hide.play.ani",Tags:["hide.animals","neww"]}
execute if score hide.ranani board matches 4 run summon minecraft:mooshroom 335 65 -332 {DeathLootTable:"",Invulnerable:1b,PersistenceRequired:1b,Team:"hide.play.ani",Tags:["hide.animals","neww"]}
execute if score hide.ranani board matches 5 run summon minecraft:panda 335 65 -332 {DeathLootTable:"",Invulnerable:1b,PersistenceRequired:1b,Team:"hide.play.ani",Tags:["hide.animals","neww"]}
execute if score hide.ranani board matches 6 run summon minecraft:squid 343 64 -318 {DeathLootTable:"",Invulnerable:1b,PersistenceRequired:1b,Team:"hide.play.ani",Tags:["hide.animals"]}
execute if score hide.ranani board matches 7 run summon minecraft:cod 343 64 -318 {DeathLootTable:"",Invulnerable:1b,PersistenceRequired:1b,Team:"hide.play.ani",Tags:["hide.animals"]}
execute if score hide.ranani board matches 8 run summon minecraft:salmon 343 64 -318 {DeathLootTable:"",Invulnerable:1b,PersistenceRequired:1b,Team:"hide.play.ani",Tags:["hide.animals"]}
execute if score hide.ranani board matches 9 run summon minecraft:goat 335 65 -332 {DeathLootTable:"",Invulnerable:1b,PersistenceRequired:1b,Team:"hide.play.ani",Tags:["hide.animals","neww"]}
execute if score hide.ranani board matches 10.. run summon minecraft:sheep 335 65 -332 {DeathLootTable:"",Invulnerable:1b,PersistenceRequired:1b,Team:"hide.play.ani",Tags:["hide.animals","neww"]}
# execute if score hide.ranani board matches 1
execute as @e[tag=neww] run spreadplayers 382 -310 0 30 under 72 false @s
tag @e[tag=neww] remove neww
