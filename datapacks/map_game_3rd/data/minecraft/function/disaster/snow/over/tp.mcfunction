execute positioned 221 -35 20 run kill @e[type=item,distance=..30]
scoreboard players set disaster.snow.state state 0
execute if entity @a[team=disaster.snow,tag=play.total] run function minecraft:small_games/total/next_game_trigger
execute as @a[team=disaster.snow,gamemode=survival] run gamemode spectator @s
execute as @a[team=disaster.snow,gamemode=adventure] run gamemode spectator @s
execute as @a[team=disaster.snow,gamemode=!creative] run function minecraft:disaster/snow/join

kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{disaster.snow:tool}}}}]
kill @e[type=marker,tag=disaster.snow.marker]
kill @e[type=falling_block,tag=disaster.snow.falling_block]
team modify disaster.snow friendlyFire false
