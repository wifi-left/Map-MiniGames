scoreboard players add @s player.board 1
title @s actionbar ["\u00a76\u00a7l救援中... ",{score:{name:"@s",objective:"player.board"},color:green,bold:false},"\u00a76/\u00a7a60 \u00a78| \u00a7f\u00a7l请尽量保持不动"]
title @a[distance=..2,gamemode=spectator,tag=stronghold.alive,team=stronghold] actionbar ["\u00a7b\u00a7l正在被救援... ",{score:{name:"@s",objective:"player.board"},color:green,bold:false},"\u00a76/\u00a7a60 \u00a78| \u00a7f\u00a7l请保持不动"]

execute if score @s player.board matches 60.. run function minecraft:stronghold/death/player_rescued