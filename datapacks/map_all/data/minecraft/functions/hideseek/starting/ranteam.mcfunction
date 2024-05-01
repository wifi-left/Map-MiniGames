##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# function hideseek/starting/joinani
team join hide.play.hun @a[team=hide.wait,limit=1,sort=random]
execute if score start.player tick matches 6.. run team join hide.play.hun @a[team=hide.wait,limit=1,sort=random]
execute if score start.player tick matches 12.. run team join hide.play.hun @a[team=hide.wait,limit=1,sort=random]
execute if score start.player tick matches 15.. run team join hide.play.hun @a[team=hide.wait,limit=1,sort=random]
team join hide.play.ani @a[team=hide.wait]
execute as @a[team=hide.play.ani] at @s run function hideseek/starting/joinani
execute as @a[team=hide.play.hun] at @s run function hideseek/starting/joinhun
