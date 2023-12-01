execute if score wolf.time board matches 1.. run scoreboard players remove wolf.time board 1
execute if score wolf.ttime board matches 1.. run scoreboard players remove wolf.ttime board 1
execute if score wolf.time board matches 0 run function minecraft:twolf/events/timeout
execute if score wolf.ttime board matches 0 run function minecraft:twolf/events/timeout
execute if score twolf.time state matches 2 run effect give @a[team=wolfpeople,gamemode=adventure,tag=!wolf.acting] invisibility 2 25 true
bossbar set minecraft:wolfkiller name ["\u00a76狼人杀 \u00a78| \u00a7a操作倒计时 [",{"score":{"objective": "board","name": "wolf.time"},"color":"aqua"},"\u00a7bs\u00a7a] \u00a78| \u00a76当前局数 [",{"score":{"objective": "board","name": "wolf.round"},"color":"aqua"},"\u00a76]"]
bossbar set minecraft:wolfkiller players
bossbar set minecraft:wolfkiller players @a[tag=wolf.tip]
bossbar set minecraft:wolfkiller players @a[tag=wolf.tip]
function minecraft:twolf/action/resethighlight
execute as @a[team=wolfpeople,gamemode=adventure,scores={LRS_CS=1..}] run function twolf/action/per/showselector
execute as @a[team=wolfpeople,gamemode=adventure,tag=wolf.acting] run function twolf/action/per/highlight_acting
scoreboard players set wolf.total board 0
execute as @a[team=wolfpeople,gamemode=adventure] run scoreboard players add wolf.total board 0