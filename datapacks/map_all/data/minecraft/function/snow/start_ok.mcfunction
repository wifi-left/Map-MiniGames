execute as @a[team=play.snow,gamemode=adventure] run spreadplayers -22 -74 0 20 under 26 false @s
execute unless score snow.tntrun state matches 1..1 run schedule function minecraft:snow/final 80s
execute unless score snow.tntrun state matches 1..1 run tellraw @a[team=play.snow] ["§a死亡决赛将在 §680 seconds§a后开始!"]