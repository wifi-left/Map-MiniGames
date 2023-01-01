tellraw @a ["\u00a7b\u00a7l[Gamom Datapacks] \u00a7aReloaded successfully ! \u00a7e[Language: 简体中文]"]
function minecraft:bedwars/setup

scoreboard objectives remove hurt.1
scoreboard objectives add hurt.1 minecraft.custom:minecraft.damage_taken
scoreboard objectives remove cooldowntime
scoreboard objectives add cooldowntime dummy ["冷却时间"]
scoreboard objectives remove zombie.hurt
scoreboard objectives add zombie.hurt minecraft.custom:damage_dealt "Zombie Damage"
scoreboard objectives remove spec
scoreboard objectives add spec trigger ["\u00a77全局旁观者操作"]

scoreboard players set -10 board -10
scoreboard players set -9 board -9
scoreboard players set -8 board -8
scoreboard players set -7 board -7
scoreboard players set -6 board -6
scoreboard players set -5 board -5
scoreboard players set -4 board -4
scoreboard players set -3 board -3
scoreboard players set -2 board -2
scoreboard players set -1 board -1
scoreboard players set 0 board 0
scoreboard players set 1 board 1
scoreboard players set 2 board 2
scoreboard players set 3 board 3
scoreboard players set 4 board 4
scoreboard players set 5 board 5
scoreboard players set 6 board 6
scoreboard players set 7 board 7
scoreboard players set 8 board 8
scoreboard players set 9 board 9
scoreboard players set 10 board 10
scoreboard players set 11 board 11
scoreboard players set 12 board 12
scoreboard players set 13 board 13
scoreboard players set 14 board 14
scoreboard players set 15 board 15
scoreboard players set 16 board 16
scoreboard players set 17 board 17
scoreboard players set 18 board 18
scoreboard players set 19 board 19
scoreboard players set 20 board 20
scoreboard players set 21 board 21
scoreboard players set 22 board 22
scoreboard players set 23 board 23
scoreboard players set 24 board 24
scoreboard players set 25 board 25
scoreboard players set 26 board 26
scoreboard players set 27 board 27
scoreboard players set 28 board 28
scoreboard players set 29 board 29
scoreboard players set 30 board 30
scoreboard players set 31 board 31
scoreboard players set 32 board 32
scoreboard players set 33 board 33
scoreboard players set 34 board 34
scoreboard players set 35 board 35
scoreboard players set 36 board 36
scoreboard players set 37 board 37
scoreboard players set 38 board 38
scoreboard players set 39 board 39
scoreboard players set 40 board 40
scoreboard players set 41 board 41
scoreboard players set 42 board 42
scoreboard players set 43 board 43
scoreboard players set 44 board 44
scoreboard players set 45 board 45
scoreboard players set 46 board 46
scoreboard players set 47 board 47
scoreboard players set 48 board 48
scoreboard players set 49 board 49
scoreboard players set 50 board 50
scoreboard players set 51 board 51
scoreboard players set 52 board 52
scoreboard players set 53 board 53
scoreboard players set 54 board 54
scoreboard players set 55 board 55
scoreboard players set 56 board 56
scoreboard players set 57 board 57
scoreboard players set 58 board 58
scoreboard players set 59 board 59
scoreboard players set 60 board 60

# function selfcheck/check
say §b§l若您是第一次使用此地图，请管理员（或者控制台）先运行 §6/function selfcheck/check §b§l检查兼容情况。§a(建议在有玩家的情况下测试)
# say §b§l若您是第一次使用此地图，请管理员（或者控制台）先运行 §6/function selfcheck/check §b§l查看兼容情况。

# function inits/reset_random
# function inits/resetuuid