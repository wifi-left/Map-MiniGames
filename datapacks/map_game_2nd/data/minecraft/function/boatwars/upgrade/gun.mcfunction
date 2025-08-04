##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
playsound ui.button.click player @s ~ ~ ~ 1 1 1
execute if score @s btw.gunspeed matches 0 run scoreboard players set boat.needcoin board 500
execute if score @s btw.gunspeed matches 1 run scoreboard players set boat.needcoin board 600
execute if score @s btw.gunspeed matches 2 run scoreboard players set boat.needcoin board 600
execute if score @s btw.gunspeed matches 3 run scoreboard players set boat.needcoin board 700
execute if score @s btw.gunspeed matches 4 run scoreboard players set boat.needcoin board 700
execute if score @s btw.gunspeed matches 5 run scoreboard players set boat.needcoin board 800
execute if score @s btw.gunspeed matches 6 run scoreboard players set boat.needcoin board 800
execute if score @s btw.gunspeed matches 7 run scoreboard players set boat.needcoin board 900
execute if score @s btw.gunspeed matches 8 run scoreboard players set boat.needcoin board 900
execute if score @s btw.gunspeed matches 9 run scoreboard players set boat.needcoin board 1000
execute if score @s btw.gunspeed matches 10 run tellraw @s ["§c无法升级：已经达到最满级。"]
execute if score @s btw.gunspeed matches 10 run return 0
execute if score @s btw.coin < boat.needcoin board run tellraw @s ["§c无法升级：金币不够。需要：",{"score":{"name":"boat.needcoin","objective":"board"},"color":"yellow"}]
execute if score @s btw.coin < boat.needcoin board run playsound entity.enderman.teleport player @s ~ ~ ~ 1 0 1
execute if score @s btw.coin < boat.needcoin board run return 0
scoreboard players operation @s btw.coin -= boat.needcoin board
scoreboard players add @s btw.gunspeed 1
playsound entity.player.levelup player @s ~ ~ ~ 1 2 1
tellraw @s ["§a升级成功，当前速度：",{"score":{"name":"@s","objective":"btw.gunspeed"},"color":"aqua"}]

