# say 2

execute if score hide2.state state matches 1.. run function minecraft:hide2/second

execute if score tnt.state state matches 1.. run function minecraft:tntwars/second
tag @a[tag=wolf.tip] remove wolf.tip
tag @a[team=wolfpeople] add wolf.tip
tag @a[team=wait.wolfpeople] add wolf.tip
bossbar set minecraft:wolfkiller players
bossbar set minecraft:wolfkiller players @a[tag=wolf.tip]
bossbar set zombie:zombiecount players
bossbar set zombie:zombiecount players @a[team=play.zombie]

execute if entity @a[team=dropper] in dropperworld run function dropper/second

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
function o_f_tick

execute in killerworld if score twolf.state state matches 1.. run function minecraft:twolf/second

effect give @a[team=wait.wolfpeople] resistance 2 25 true
effect give @a[team=wolfpeople] resistance 2 25 true
