tag @s add merchant.player
gamemode spectator
tellraw @s ["\u00a7c你在本轮游戏中能参与游戏，但无法参与分数角逐。"]
scoreboard players operation @a[team=deskgame] globle.game = game.merchant globle.game
tp @s @r[tag=merchant.alive,gamemode=!spectator]