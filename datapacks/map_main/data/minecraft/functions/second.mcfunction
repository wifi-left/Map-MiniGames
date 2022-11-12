scoreboard players set tick tick 0
spawnpoint @a[team=wait.zombie] -202 17 353
spawnpoint @a[team=lobby] 188 124 26 0
 
scoreboard players set wait.hit.player tick 0 
execute as @a[team=wait.repel] run scoreboard players add wait.hit.player tick 1

scoreboard players set wait.live.player tick 0 
execute as @a[team=wait.live] run scoreboard players add wait.live.player tick 1

scoreboard players set wait.park.player tick 0 
execute as @a[team=wait.parkour] run scoreboard players add wait.park.player tick 1

execute if score zombie.debug state matches 1 run function zombieever/test/display

bossbar set zombie:zombiecount players
bossbar set zombie:zombiecount players @a[team=play.zombie]

execute if entity @a[team=dropper] in dropperworld run function dropper/second

execute if score wolf.state state matches 1..1 run function minecraft:small_games/wolf/second

scoreboard players set play.park.player tick 0 
execute as @a[team=play.parkour,gamemode=adventure] run scoreboard players add play.park.player tick 1

execute if score chess.state state matches 1.. run function small_games/chess/second

execute if score hide.state state matches 1.. run function hideseek/second

execute unless score wait.hit.player tick matches 2.. run scoreboard players set start.repel.second tick 30
execute if score wait.hit.player tick matches 2.. run scoreboard players remove start.repel.second tick 1
execute unless score wait.hit.player tick matches 2.. run title @a[team=wait.repel] actionbar ["\u00a7bEvent : \u00a7a游戏开始 \u00a7e- \u00a76请等待更多玩家加入！"]
execute if score wait.hit.player tick matches 2.. run title @a[team=wait.repel] actionbar ["\u00a7bEvent : \u00a7a游戏开始 \u00a7e- ",{"score":{"objective":"tick","name":"start.repel.second"},"color":"gold"},"\u00a76s"]
execute if score start.repel.second tick matches ..1 run function minecraft:repel/start
effect give @a[team=lobby,scores={health=..19}] minecraft:instant_health 1 5 true
effect give @a minecraft:saturation 1 25 true


execute if score hunger.state state matches 1.. in hungerworld run function hunger/second
execute if score hunger.state state matches 0 in hungerworld run effect give @a[team=hunger] resistance 2 25 true
effect give @a[team=golf] resistance 2 25 true

bossbar set minecraft:hungergame players @a[team=hunger]

execute if score live.state state matches 1..1 run function minecraft:live/testfor
effect give @a[team=play.live.killer] minecraft:saturation 2 25 true
effect give @a[team=play.live.runner] minecraft:saturation 2 25 true
execute if score live.set.mode live.all matches 0..0 run effect give @a[team=play.live.killer] minecraft:glowing 2 1 true
execute if score live.state state matches 2..2 run scoreboard players remove givething live.all 1
execute if score live.state state matches 2..2 run title @a[team=play.live.runner] actionbar ["\u00a7a你会在 ",{"score":{"objective":"live.all","name":"givething"},"color":"gold"},"\u00a76s \u00a7a后得到你的盔甲！"]
execute if score live.state state matches 2..2 if score givething live.all matches ..0 run function minecraft:live/givethings

execute if score live.state state matches 3..3 run scoreboard players remove gamestart live.all 1
execute if score live.state state matches 3..3 run title @a[team=play.live.runner] actionbar ["\u00a7a游戏将在 ",{"score":{"objective":"live.all","name":"gamestart"},"color":"gold"},"\u00a76s \u00a7a后正式开始！"]
execute if score live.state state matches 3..3 if score gamestart live.all matches ..0 run function minecraft:live/gamereallystart
execute if entity @a[team=wait.total] run function minecraft:small_games/total/start_second
# execute unless entity @a[team=wait.total] if entity @a[tag=play.total] run function minecraft:small_games/total/start_second
execute if score gametotal state matches 1.. run function minecraft:small_games/total/second

scoreboard players add tick2 tick 1
execute if score tick2 tick matches 4.. run function minecraft:tsecond
scoreboard players add tick3 tick 1
execute if score tick3 tick matches 10.. run function minecraft:ttsecond
execute store result bossbar minecraft:live value run scoreboard players get live.time live.all
execute if score live.state state matches 1..1 run scoreboard players add live.time live.all 1

execute if score park.state state matches 1.. run function minecraft:parkourrace/testfor
execute if score pw.state state matches 1.. run function minecraft:poolwar/second
function minecraft:snow/second
execute if score car.state state matches 1.. run function minecraft:car_race/second
execute as @e[tag=block_entity] run data merge entity @s {Time:100}

## 210 116 22 拉杆1 - 烟花
execute if block 210 116 30 lever[powered=true] run function lobby/firework


## Car
# execute as @e[tag=lobby.car.start] at @s unless entity @e[tag=lobby.car,type=!player,distance=0..1] run function lobby/spawncar
# execute as @e[tag=lobby.car.end] at @s run kill @e[tag=lobby.car,type=!player,distance=0..3]
xp add @a[team=play.live.runner,level=1..] -1 levels 
xp add @a[team=play.live.killer,level=1..] -1 levels 
effect give @a[team=wait.sur] resistance 2 25 true
execute if score golf.state state matches 1.. in golfworld run function golf/second
execute if score boat.state state matches 1.. in boatworld2 run function boat/second
execute if score sur.state state matches 1.. in airworld run function surgame:second
effect give @a[team=boat] resistance 3 25 true

execute as @e[type=area_effect_cloud,tag=lobby] at @s run data merge entity @s {Duration:2147483647,Age:0}