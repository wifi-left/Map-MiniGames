execute if entity @a[tag=total.sel.a] run function minecraft:small_games/total/wur/startgame/a
execute if entity @a[tag=total.sel.b] run function minecraft:small_games/total/wur/startgame/b

execute unless entity @a[tag=total.sel.a] run scoreboard players set total.a.hastarted board 2
execute unless entity @a[tag=total.sel.b] run scoreboard players set total.b.hastarted board 2