execute as @a[team=live,gamemode=adventure] at @s run function minecraft:live/player_gain_coin {count:4,reason:"存活"}
execute unless entity @a[team=live,gamemode=adventure] as @a[team=live.killer] run function minecraft:live/player_gain_coin {count:4,reason:"全部追杀完毕"}
team join live @a[team=live.killer]
tellraw @a[team=live] ["\n\u00a76本轮结束。\n"]
function minecraft:live/next_round