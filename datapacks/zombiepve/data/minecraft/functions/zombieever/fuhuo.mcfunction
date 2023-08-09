tellraw @s ["\u00a7a你复活了。"]
execute if score zombie.round board matches ..17 run tp @s 630 10 -78 90 0
execute if score zombie.round board matches 18..24 run tp @s 558 -12 -136 0 0
execute if score zombie.round board matches 25..27 run tp @s 519 -42 -116 -90 0
execute if score zombie.round board matches 28.. run tp @s 630 10 -78 90 0
gamemode adventure @s