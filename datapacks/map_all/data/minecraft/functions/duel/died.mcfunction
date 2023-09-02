# tellraw @s ["\u00a7c对不起，你淘汰了！"]
# tellraw @a[team=play.beli] [{"selector":"@s"},"\u00a7c 淘汰！"]
# tellraw @a[team=wait.beli] [{"selector":"@s"},"\u00a7c 淘汰！"]
# gamemode spectator @s
# scoreboard players set play.beli.player tick 0 
# execute as @a[team=play.beli,gamemode=adventure] run scoreboard players add play.beli.player tick 1
# title @a[team=play.beli] actionbar ["\u00a7c当前场上剩余选手： ",{"score":{"objective": "tick","name": "play.beli.player"},"color": "dark_purple"}]
effect clear @s
clear @s
effect give @s instant_health 1 25 true
tellraw @a[team=play.duel.blue] [{"selector":"@s"},"\u00a77 死了。"]
tellraw @a[team=play.duel.yellow] [{"selector":"@s"},"\u00a77 死了。"]
tp @s[team=play.duel.yellow] -350 12 -76 -90 0
tp @s[team=play.duel.blue] -280 12 -76 90 0
function duel/item