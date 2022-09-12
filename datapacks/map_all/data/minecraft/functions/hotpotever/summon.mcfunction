##execute as @a[team=play.hotpot.k] at @s run function hotpotever/died
team join play.hotpot.k @r[team=play.hotpot,gamemode=adventure]
execute as @a[team=play.hotpot] at @s run playsound entity.ender_dragon.growl player @s
execute as @a[team=play.hotpot.k] at @s run playsound entity.ender_dragon.growl player @s

tellraw @a[team=play.hotpot] ["\n    \u00a7cHot Potato 持有者：",{"selector":"@a[team=play.hotpot.k]"},"\n"]
tellraw @a[team=play.hotpot.k] ["\n    \u00a7bHot Potato 持有者（包含你）：",{"selector":"@a[team=play.hotpot.k]"},"\n"]
give @a[team=play.hotpot.k] potato{hotpot:1,display:{Name:'{"text":"Hot Potato","color":"#aed3ff","bold": true}'}}
scoreboard players set hotpot.state state 2
scoreboard players set hp.time tick 60
team modify play.hotpot.k color dark_red