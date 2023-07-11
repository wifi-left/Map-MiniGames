scoreboard players set tmp board 0
execute as @e[tag=random_game,type=marker] run scoreboard players add tmp board 1
tellraw @a ["\u00a7e随机数数量（大概在10个左右是正常的）：",{"score":{"objective": "board","name": "tmp"},"color": "red"}]
function selfcheck/final
