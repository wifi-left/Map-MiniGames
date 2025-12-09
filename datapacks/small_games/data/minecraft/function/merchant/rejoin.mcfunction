scoreboard players reset @s leave
tag @s remove merchant.turn.now

tag @s add merchant.player
scoreboard players operation @a[team=deskgame] globle.game = game.merchant globle.game
team join deskgame @s
tellraw @s ["\u00a77你已重新加入游戏。"]
tellraw @a [{selector:"@s"},"\u00a77已重新加入游戏。"]
execute unless entity @s[tag=merchant.alive] run return run function minecraft:merchant/spec
tp @s @r[tag=merchant.alive,gamemode=!spectator]