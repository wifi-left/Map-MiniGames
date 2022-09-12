title @a[team=hide.play.hun] title ["\u00a76Game Over!"]
tellraw @a[team=hide.play.hun] ["\n\u00a7c   猎人获胜！\n"]
tellraw @a[team=hide.play.ani] ["\n\u00a7c   猎人获胜！\n"]
tellraw @a[team=hide.wait] ["\n\u00a7c   猎人获胜！\n"]
execute as @a[team=hide.wait] run function hideseek/join
execute as @a[team=hide.play.hun] run function hideseek/join
execute as @a[team=hide.play.ani] run function hideseek/join
gamemode adventure @a[team=hide.wait]
function hideseek/gameover/over
