scoreboard players set boom.state state 0

execute if entity @a[team=boom,tag=play.total] run function small_games/total/next_game


execute as @a[team=boom,gamemode=spectator] at @s run gamemode adventure @s
execute as @a[team=boom,gamemode=adventure] at @s run function minecraft:bomb/join

schedule clear minecraft:bomb/round/cdover
schedule clear minecraft:bomb/round/next_person
bossbar set boom name '\u00a7a拆弹达人 \u00a78| \u00a7b欢迎游玩'
