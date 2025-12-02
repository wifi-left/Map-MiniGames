execute unless entity @s[tag=play.total] run return fail
$scoreboard players add @s score $(score)
$tellraw @a[tag=play.total] ["\n",{text:"[小游戏合集得分]",color:gold,bold:true}," ",{selector:"@s",color:yellow,bold:false},{text:" 在这一局游戏中获得 ",color:aqua},{text:"$(score)",color:yellow},{text:" 分",color:aqua},"\n"]
$title @s actionbar [{text:"恭喜你在这一局游戏中获得 ",color:aqua},{text:"$(score)",color:yellow},{text:" 分",color:aqua}]
execute at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 0 1