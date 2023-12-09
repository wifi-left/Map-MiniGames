execute if score wolf.time board matches 0 run function minecraft:twolf/events/timeout
execute if score wolf.ttime board matches 0 run function minecraft:twolf/events/next_event

execute if score twolf.time state matches 2 run effect give @a[team=wolfpeople,gamemode=adventure,tag=!wolf.acting] invisibility 2 25 true
execute if score twolf.time state matches 2 run effect give @a[team=wolfpeople,gamemode=adventure,tag=!wolf.acting] blindness 2 25 true
execute if score twolf.time state matches 2 run effect give @a[team=wolfpeople,gamemode=adventure,tag=!wolf.acting] darkness 2 25 true
execute if score wolf.time board matches 1.. run scoreboard players remove wolf.time board 1
execute if score wolf.ttime board matches 1.. run scoreboard players remove wolf.ttime board 1
execute if score wolf.time board matches 1.. run bossbar set minecraft:wolfkiller name ["\u00a76狼人杀 \u00a78| \u00a7a操作倒计时 [",{"score":{"objective": "board","name": "wolf.time"},"color":"aqua"},"\u00a7bs\u00a7a] \u00a78| \u00a76当前局数 [",{"score":{"objective": "board","name": "wolf.round"},"color":"aqua"},"\u00a76]"]
execute unless score wolf.time board matches 1.. run bossbar set minecraft:wolfkiller name ["\u00a76狼人杀 \u00a78| \u00a7a当前局数 [",{"score":{"objective": "board","name": "wolf.round"},"color":"aqua"},"\u00a7a]"]
execute if score twolf.state state matches 3 run bossbar set minecraft:wolfkiller name ["\u00a76狼人杀 \u00a78| \u00a7c游戏结束"]


function minecraft:twolf/action/resethighlight
execute as @a[team=wolfpeople,gamemode=adventure] unless score @s LRS_CS matches 1.. run function twolf/action/per/showjob
execute as @a[team=wolfpeople,gamemode=adventure,scores={LRS_CS=1..}] run function twolf/action/per/showselector
execute as @a[team=wolfpeople,gamemode=adventure,tag=wolf.acting] run function twolf/action/per/highlight_acting
scoreboard players set wolf.total board 0
execute as @a[team=wolfpeople,gamemode=adventure] run scoreboard players add wolf.total board 0

execute unless score twolf.state state matches 3 run function minecraft:twolf/persons

execute unless score twolf.state state matches 3 if score wolf.r.all board matches ..0 run function twolf/over/unexpected
execute unless score twolf.state state matches 3 if score wolf.event board matches 0 run function minecraft:twolf/overdetect
execute unless score twolf.state state matches 3 if score wolf.event board matches 10 run function minecraft:twolf/overdetect
execute unless score twolf.state state matches 3 if score wolf.event board matches 18 run function minecraft:twolf/overdetect


