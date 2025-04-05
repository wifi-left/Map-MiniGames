
tellraw @a[team=play.zombie] ["\u00a7b幻术师：\u00a7f来，小伙子们，一起陪他们玩玩！"]
scoreboard players set zombie.round board 26
schedule function minecraft:zombieever/rounds/strongholdboss 4s append
