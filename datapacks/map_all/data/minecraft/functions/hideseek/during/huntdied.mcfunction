tellraw @s ["\u00a7e你复活了。"]
tellraw @a[team=hide.play.hun] [{"selector":"@s"},"\u00a7c 死了。"]
tellraw @a[team=hide.play.ani] [{"selector":"@s"},"\u00a7c 死了。"]
clear @s
scoreboard players reset @s die
function hideseek/during/hunitem
team join hide.play.hun
tp @s 470 2 -362 -180 0
xp set @s 0 levels
xp set @s 0 points