# function hideseek/starting/joinani
team join hide.killer @a[team=hide.wait2,gamemode=adventure,limit=1,sort=random]
execute if score start.player tick matches 5.. run team join hide.killer @a[team=hide.wait2,gamemode=adventure,limit=1,sort=random]
execute if score start.player tick matches 9.. run team join hide.killer @a[team=hide.wait2,gamemode=adventure,limit=1,sort=random]
execute if score start.player tick matches 14.. run team join hide.killer @a[team=hide.wait2,gamemode=adventure,limit=1,sort=random]
team join hide.runner @a[team=hide.wait2,gamemode=adventure]
execute as @a[team=hide.runner] at @s run function hide2/starting/joinrunner
execute as @a[team=hide.killer] at @s run function hide2/starting/joinkiller