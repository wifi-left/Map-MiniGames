tellraw @a[team=play.zombie] ["\u00a7a神様：\u00a7fHey，冒险者。欢迎来到我所管辖的世界！"]
effect give @a[team=play.zombie] blindness 99999 25 true
effect give @a[team=play.zombie] slowness 99999 25 true
effect give @a[team=play.zombie] jump_boost 99999 128 true
effect give @a[team=play.zombie] invisibility 99999 25 true
schedule function minecraft:zombieever/talks/pre/2 4s append