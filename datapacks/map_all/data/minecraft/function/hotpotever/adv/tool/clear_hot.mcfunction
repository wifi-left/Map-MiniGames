advancement revoke @s from hotpotever/root
team join play.hotpot
execute at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 1 1
tellraw @a[team=play.hotpot.k] [{selector:"@s"},"\u00a7a 使用了道具消除了",{"text":"Hot Potato","color":"#aed3ff","bold": true}]
tellraw @a[team=play.hotpot] [{selector:"@s"},"\u00a7a 使用了道具消除了",{"text":"Hot Potato","color":"#aed3ff","bold": true}]
clear @s potato