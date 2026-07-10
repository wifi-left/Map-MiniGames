tellraw @s [""]
execute store result score random temp run random value 0..7
execute if score random temp matches 0 run tellraw @a[team=deskgame] [{selector:"@s"},"\u00a7d 抽中了\u00a7a[返回出生点]"]
execute if score random temp matches 0 run tp @s 5 8 -19 -90 0
execute if score random temp matches 1 store result score merchant.jump.step board run random value 1..3
execute if score random temp matches 2 store result score merchant.jump.step board run random value 4..6
execute if score random temp matches 3 store result score merchant.jump.step board run random value 7..12
execute if score random temp matches 1..3 run tellraw @a[team=deskgame] [{selector:"@s"},"\u00a7d 抽中了\u00a7b[更多移动次数*",{score:{name:"merchant.jump.step",objective:"board"},color:aqua},"\u00a7b]"]
execute if score random temp matches 1..3 run scoreboard players set desk.state state 4
execute if score random temp matches 1..3 run return run scoreboard players set desk.time board 61
execute if score random temp matches 4 run tellraw @a[team=deskgame] [{selector:"@s"},"\u00a7d 抽中了\u00a7c[再次操作]"]
execute if score random temp matches 4 run return run function minecraft:merchant/player/turn
execute if score random temp matches 5 run tellraw @a[team=deskgame] [{selector:"@s"},"\u00a7d 抽中了\u00a7a[100金币]"]
execute if score random temp matches 5 run scoreboard players add @s merchant.coin 100
execute if score random temp matches 6 run tellraw @a[team=deskgame] [{selector:"@s"},"\u00a7d 抽中了\u00a7c[-100金币]"]
execute if score random temp matches 6 run scoreboard players remove @s merchant.coin 100
execute if score random temp matches 7 run tellraw @a[team=deskgame] [{selector:"@s"},"\u00a7c 是非酋，没抽中。"]

execute at @s run function merchant/player/action/setpoint
function minecraft:merchant/player/over_turn