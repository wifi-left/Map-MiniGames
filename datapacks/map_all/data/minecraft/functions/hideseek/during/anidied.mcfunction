scoreboard players reset @s die
tellraw @a[team=hide.play.hun] [{"selector":"@s"},"\u00a7c 变成了猎人。"]
tellraw @a[team=hide.play.ani] [{"selector":"@s"},"\u00a7c 变成了猎人。"]
tellraw @s ["\u00a7e你死了。\n现在成为了一个猎人。"]
clear @s
team join hide.play.hun
function hideseek/during/hunitem
xp set @s 0 levels
xp set @s 0 points

tag @s add seel
execute as @e[tag=hide.animals,tag=hide.cosplay] if score @s LRS_START_DJS = @a[tag=seel,limit=1] park.uuid run tag @s add shouldtp 
tag @s remove seel
# tp @e[tag=shouldtp] @s
scoreboard players reset @e[tag=shouldtp,limit=1]
kill @e[tag=shouldtp,limit=1]
# tellraw @s ["\n\u00a7a提示：请攻击动物靠上部分。\n"]
