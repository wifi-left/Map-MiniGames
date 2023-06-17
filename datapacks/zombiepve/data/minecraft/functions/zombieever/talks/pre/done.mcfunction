tellraw @a[team=play.zombie] ["\u00a7a神様：\u00a7f哦，对了，忘记说了，每次攻击结束后，只要有一人活着,你们都可以完好地复活。僵尸现在已经占领了 \u00a7bMystery Village\u00a7f，去攻击吧！冒险者们！\n\n\u00a76僵尸将在15秒后到来。\n"]
schedule function zombieever/nextround 15s
bossbar set zombie:zombiecount name ["\u00a7a游戏开始，\u00a7e15 秒\u00a7a后僵尸来临。"]
effect clear @a[team=play.zombie] blindness
effect clear @a[team=play.zombie] slowness
effect clear @a[team=play.zombie] jump_boost
effect clear @a[team=play.zombie] invisibility