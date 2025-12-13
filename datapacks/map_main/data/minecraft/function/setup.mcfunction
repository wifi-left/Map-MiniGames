##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @a ["§b§l[Gamom Datapacks] §aReloaded successfully ! §e[Language: 简体中文]"]
function minecraft:bedwars/setup
bossbar remove boom
bossbar add boom "拆弹达人"
bossbar set boom name '\u00a7a拆弹达人 \u00a78| \u00a7b欢迎游玩'
bossbar set boom color green
bossbar set boom max 420
bossbar set boom value 420
scoreboard objectives remove car.speed
scoreboard objectives add car.speed dummy "Speed of car"
scoreboard objectives remove bw.tmp.ir
scoreboard objectives remove bw.tmp.gd
scoreboard objectives remove blaze.trigger
scoreboard objectives add blaze.trigger trigger
scoreboard objectives remove bw.tmp.dm
scoreboard objectives remove bw.tmp.em
scoreboard objectives add bw.tmp.ir dummy
scoreboard objectives add bw.tmp.gd dummy
scoreboard objectives add bw.tmp.dm dummy
scoreboard objectives add bw.tmp.em dummy
scoreboard objectives remove use.egg
scoreboard objectives remove bw.team
scoreboard objectives remove snow.tick
scoreboard objectives add snow.tick dummy "Snow: TNTRUN block Time"
scoreboard objectives add bw.team dummy "起床|队伍选择"
# scoreboard objectives remove ingameid
scoreboard objectives add ingameid dummy "游戏内ID"
scoreboard objectives add merchant.coin dummy "\u00a7b\u00a7l商贾传奇 \u00a7e金钱"
scoreboard objectives add use.egg used:minecraft.egg
scoreboard objectives remove action.jump
scoreboard objectives add action.jump minecraft.custom:minecraft.jump "动作|Jump"
scoreboard objectives remove level
scoreboard objectives remove sneaking
scoreboard objectives add sneaking minecraft.custom:minecraft.sneak_time
scoreboard objectives add level level
scoreboard objectives remove zombie.villager.click
scoreboard objectives add zombie.villager.click minecraft.custom:minecraft.talked_to_villager
scoreboard objectives remove hurt.1
scoreboard objectives add hurt.1 minecraft.custom:minecraft.damage_taken
scoreboard objectives remove cooldowntime
scoreboard objectives add cooldowntime dummy ["冷却时间"]
scoreboard objectives remove zombie.hurt
scoreboard objectives add zombie.hurt minecraft.custom:damage_dealt "Zombie Damage"
scoreboard objectives remove spec
scoreboard objectives add spec trigger ["\u00a77全局旁观者操作"]
scoreboard objectives remove quickplay
scoreboard objectives add quickplay trigger "快速加入"

scoreboard objectives remove globle.game
scoreboard players set globle globle.game 1
scoreboard objectives add globle.game dummy "游戏ID，用于玩家重新加入"

scoreboard objectives add old dummy "老玩家检测"
# game.total globle.game = globle globle.game
scoreboard objectives remove hub
scoreboard objectives remove rejoin
scoreboard objectives add hub trigger "\u00a7b回城操作"
scoreboard objectives add rejoin trigger "\u00a7e重新加入游戏操作"
scoreboard objectives remove xp
scoreboard objectives add xp level "经验等级"
scoreboard objectives remove temp
scoreboard objectives add temp dummy "\u00a7c临时变量"
bossbar remove minecraft:battle
bossbar add minecraft:battle "BATTLE GAME"
bossbar set minecraft:battle color green
bossbar set minecraft:battle max 60

bossbar set minecraft:battle value 0
# function selfcheck/check
say §b§l若您是第一次使用此地图，请管理员（或者控制台）先运行 §6/function selfcheck/check §b§l检查兼容情况。§a(建议在有玩家的情况下测试)
say 建议您安装 https://modrinth.com/mod/speech-manager-by-command-scoreboard 模组（仅需服务端），即可在需要的时候控制玩家说话，提升游戏体验感。
function minecraft:version/version1
function minecraft:version/gamev
# say §b§l若您是第一次使用此地图，请管理员（或者控制台）先运行 §6/function selfcheck/check §b§l查看兼容情况。

# function inits/reset_random
# function inits/resetuuid
kill @e[tag=lobby.car,type=minecart]

execute in overworld run forceload add 0 0

# MOD：
## 0 for nothing; 1 ban other team; 2 ban own team; 4 ban /shout
scoreboard players set wait.wolfpeople BAMBOO_MOD_SAYING 0
scoreboard players set wolfpeople BAMBOO_MOD_SAYING 0
scoreboard players set bw.blue BAMBOO_MOD_SAYING 2
scoreboard players set bw.wait BAMBOO_MOD_SAYING 2
scoreboard players set bw.green BAMBOO_MOD_SAYING 2
scoreboard players set bw.yellow BAMBOO_MOD_SAYING 2
scoreboard players set bw.red BAMBOO_MOD_SAYING 2
bossbar set minigames:bedwars players @a[tag=bw.player]

gamerule disableElytraMovementCheck true
gamerule disablePlayerMovementCheck true

forceload add 0 0 0 0

scoreboard objectives add touzi.count dummy "还能刷新几次骰子"

execute unless score hunger.state state matches 1.. run execute in airworld run forceload remove all

kill @e[type=firework_rocket]
kill @e[type=fireball]
# kill @e[type=item]

gamerule commandModificationBlockLimit 1145141
gamerule maxCommandChainLength 1145141
gamerule maxCommandForkCount 1145141

scoreboard players reset * bw.board
