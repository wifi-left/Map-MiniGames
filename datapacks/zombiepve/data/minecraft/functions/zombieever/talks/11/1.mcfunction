bossbar set zombie:zombiecount name ["\u00a7a对话 #3：你与神様 \u00a76| \u00a7d进入地下城"]
function zombieever/door/open2
tellraw @a[team=play.zombie] ["\u00a7a神様：\u00a7f好了，麻烦解除了，继续前进吧！"]
schedule function minecraft:zombieever/nextround 15s append
