# effect give @a[team=hide.play.ani] resistance 1 25 true
# effect give @a[team=hide.play.hun] resistance 1 25 true
effect give @a[team=hide.wait] resistance 1 25 true
spawnpoint @a[team=hide.play.ani] 470 2 -362 -180
spawnpoint @a[team=hide.play.hun] 470 2 -362 -180
function hideseek/during/testanimal
xp add @a[level=1..,team=hide.play.hun] -1 levels
xp add @a[level=1..,team=hide.play.ani] -1 levels
scoreboard players remove hide.resttime board 1
scoreboard players set hide.restanimals board 0
scoreboard players set hide.resthunts board 0
execute as @a[team=hide.play.ani] at @s run scoreboard players add hide.restanimals board 1
execute as @a[team=hide.play.hun] at @s run scoreboard players add hide.resthunts board 1
bossbar set minecraft:hideseek name ["\u00a7b剩余时间：",{"score":{"objective":"board","name":"hide.resttime"},"color":"gold"},"\u00a76s  \u00a7a剩余动物数：",{"score":{"objective":"board","name":"hide.restanimals"},"color":"gold"}]
execute if score hide.resttime board matches ..30 run effect give @a[team=hide.play.ani,gamemode=adventure] glowing 2 2 true
scoreboard players set 60 board 60
scoreboard players operation hide.tmp board = hide.resttime board
scoreboard players operation hide.tmp board %= 60 board
execute if score hide.tmp board matches ..0 run function hideseek/glowingeveryone
execute as @a[team=hide.play.hun] at @s if entity @a[distance=0..10,team=hide.play.ani] run title @s actionbar ["\u00a7c检测到：\u00a76附近有躲藏者"]
execute as @a[team=hide.play.hun] at @s as @a[distance=0..10,team=hide.play.ani] run title @s actionbar ["\u00a7c检测到：\u00a76附近有寻找者"]
# bossbar set minecraft:hideseek max 300
execute store result bossbar minecraft:hideseek max run scoreboard players get hide.maxtime board
execute store result bossbar minecraft:hideseek value run scoreboard players get hide.resttime board
bossbar set minecraft:hideseek players
tag @a[team=hide.play.hun] add hide.player
tag @a[team=hide.play.ani] add hide.player
tag @a[team=hide.wait] add hide.player
bossbar set minecraft:hideseek players @a[tag=hide.player]
tag @a remove hide.player
effect give @a[team=hide.play.ani] invisibility 2 25 true
effect give @a[team=hide.play.ani] minecraft:water_breathing 2 25 true
execute if score hide.state state matches 2.. run function hideseek/prepare/step1
execute if score hide.state state matches 1.. if score hide.restanimals board matches ..0 run function hideseek/gameover/hunt
execute if score hide.state state matches 1.. if score hide.resthunts board matches ..0 run function hideseek/gameover/ani
execute if score hide.state state matches 1.. if score hide.resttime board matches ..0 run function hideseek/gameover/anitime

