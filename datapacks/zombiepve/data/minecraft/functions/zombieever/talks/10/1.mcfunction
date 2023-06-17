bossbar set zombie:zombiecount name ["\u00a7a对话 #2：你与神様"]

tellraw @a[team=play.zombie] ["\u00a7a神様：\u00a7fHey，冒险者（们）。恭喜你！"]
function zombieever/door/open1

schedule function minecraft:zombieever/talks/10/2 4s append