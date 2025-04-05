scoreboard players set gametotal state 0
# gamemode survival @a[tag=play.total]
execute as @a[tag=play.total] in overworld run gamemode adventure @s
execute as @a[tag=play.total] in overworld run function small_games/total/join
tag @a[tag=play.total] remove play.total
