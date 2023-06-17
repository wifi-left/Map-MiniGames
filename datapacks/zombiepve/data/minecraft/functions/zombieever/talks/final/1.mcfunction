bossbar set zombie:zombiecount name ["\u00a7a对话 #5：你与神様 \u00a76| \u00a7e获得胜利"]
tellraw @a[team=play.zombie] ["\u00a7a神様：\u00a7f好吧，是你（们）赢了，冒险者。希望下一次还能这样愉快的游戏啊！"]
schedule function minecraft:zombieever/talks/final/2 5s append