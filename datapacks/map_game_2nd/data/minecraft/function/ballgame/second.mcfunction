execute if score ballgame.type board matches 0 run function minecraft:ballgame/typesecond/football
execute if score ballgame.type board matches 1 run function minecraft:ballgame/typesecond/dodgeball
effect give @a[team=ballgame] resistance 2 25 true
execute if score ballgame.state state matches 1..99 as @a[team=ballgame,level=1..] run xp add @s -1 levels