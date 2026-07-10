tag @a remove total.sel.a
tag @a remove total.sel.b
execute as @a[team=play.total] if items entity @s weapon.offhand *[custom_data~{total.sel:a}] run tag @s add total.sel.a
execute as @a[team=play.total] if items entity @s weapon.offhand *[custom_data~{total.sel:b}] run tag @s add total.sel.b

scoreboard players set total.a.hastarted board 0
scoreboard players set total.b.hastarted board 0

scoreboard players set total.sel.a.count tick 0
scoreboard players set total.sel.b.count tick 0
execute as @a[tag=total.sel.a,tag=!GLOBAL.SPEC] run scoreboard players add total.sel.a.count tick 1
execute as @a[tag=total.sel.b,tag=!GLOBAL.SPEC] run scoreboard players add total.sel.b.count tick 1

execute if score total.sel.b.count tick matches ..1 run function minecraft:small_games/total/wur/not_enough_player/b
execute if score total.sel.a.count tick matches ..1 run function minecraft:small_games/total/wur/not_enough_player/a

team modify play.total prefix ""
team modify play.total color yellow
execute if entity @a[team=play.total,tag=total.sel.a] run tellraw @a[team=play.total] [{text:"\n[A] ","color":"yellow"},{color:green,translate:"选择游戏[%s]的玩家有：",fallback:"选择游戏[%s]的玩家有：",with:[{"nbt":"total_game_wur.a.name",storage:"minecraft:temp","color":"yellow","bold":true,interpret:true}]},{text:"\n - ",color:gold},{selector:"@a[team=play.total,tag=total.sel.a]",separator:", ",color:yellow}]
team modify play.total color blue
execute if entity @a[team=play.total,tag=total.sel.b] run tellraw @a[team=play.total] [{text:"\n[B] ","color":"blue"},{color:aqua,translate:"选择游戏[%s]的玩家有：",fallback:"选择游戏[%s]的玩家有：",with:[{"nbt":"total_game_wur.b.name",storage:"minecraft:temp","color":"blue","bold":true,interpret:true}]},{text:"\n - ",color:gold},{selector:"@a[team=play.total,tag=total.sel.b]",separator:", ",color:blue}]
tellraw @a[team=play.total] [""]
team modify play.total color black
team modify play.total prefix [{text:"[P]",color:red},{text:" PARTY",color:"#009966"},{text:" | ",color:dark_gray}]
