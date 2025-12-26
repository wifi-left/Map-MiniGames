execute positioned -170 -48 370 run kill @e[type=item,distance=..30]
scoreboard players set one_arrow.state state 0
execute if entity @a[team=one_arrow,tag=play.total] run function minecraft:small_games/total/next_game_trigger
execute as @a[team=one_arrow,gamemode=survival] run gamemode spectator @s
execute as @a[team=one_arrow,gamemode=adventure] run gamemode spectator @s
execute as @a[team=one_arrow,gamemode=!creative] run function minecraft:one_arrow/join
team modify one_arrow friendlyFire false
team modify one_arrow nametagVisibility always
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{one_arrow:tool}}}}]
