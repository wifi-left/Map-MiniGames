scoreboard players set tmp board 0
execute as @e[tag=random_game,type=marker] run scoreboard players add tmp board 1
tellraw @a ["\u00a7e随机数数量（大概在10个左右是正常的）：",{"score":{"objective": "board","name": "tmp"},"color": "red"}]
tellraw @a ["\u00a76随机游戏（与随机数相关）：",{"selector":"@e[tag=random_game]","color": "red"}]
execute if score tmp board matches 15.. run scoreboard players add syserror board 1
execute if score tmp board matches 15.. run say §c [×] 随机数数量错误！§e解决办法：§f不要使用插件端，请使用forge服务端、§efabric服务端§f或者原版服务端！
function selfcheck/final
