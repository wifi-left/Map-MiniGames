##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 

tellraw @a ["§b§l[Gamom Datapacks] §aReloaded successfully ! §e[Language: 简体中文]"]
function minecraft:bedwars/setup
function minecraft:team/setup
function minecraft:t_says/setup
bossbar remove boom
bossbar add boom "拆弹达人"
bossbar set boom name '\u00a7a拆弹达人 \u00a78| \u00a7b欢迎游玩'
bossbar set boom color green
bossbar set boom max 420
bossbar set boom value 420

scoreboard objectives remove bw.bridge.place.wool
scoreboard objectives remove bw.bridge.count.wool
scoreboard objectives add bw.bridge.place.wool minecraft.used:minecraft.white_wool
scoreboard objectives add bw.bridge.count.wool dummy

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
# 爆炸模拟（cmdtnt）：状态存在标记实体自身，同一刻多次爆炸互不干扰
scoreboard objectives remove cmdtnt.x
scoreboard objectives remove cmdtnt.y
scoreboard objectives remove cmdtnt.range
scoreboard objectives remove cmdtnt.go
scoreboard objectives remove cmdtnt.age
scoreboard objectives add cmdtnt.x dummy
scoreboard objectives add cmdtnt.y dummy
scoreboard objectives add cmdtnt.range dummy
scoreboard objectives add cmdtnt.go dummy
scoreboard objectives add cmdtnt.age dummy
# 起床战争道具：回城卷轴 / 救援平台 / 速建防御塔（临时变量 + 道具自身状态）
scoreboard objectives remove bw.tmp.ok
scoreboard objectives remove bw.tmp.p
scoreboard objectives remove bw.tmp.x
scoreboard objectives remove bw.tmp.y
scoreboard objectives remove bw.tmp.z
scoreboard objectives add bw.tmp.ok dummy
scoreboard objectives add bw.tmp.p dummy
scoreboard objectives add bw.tmp.x dummy
scoreboard objectives add bw.tmp.y dummy
scoreboard objectives add bw.tmp.z dummy
scoreboard objectives remove bw.scroll.t
scoreboard objectives remove bw.scroll.x
scoreboard objectives remove bw.scroll.y
scoreboard objectives remove bw.scroll.z
scoreboard objectives add bw.scroll.t dummy
scoreboard objectives add bw.scroll.x dummy
scoreboard objectives add bw.scroll.y dummy
scoreboard objectives add bw.scroll.z dummy
scoreboard objectives remove bw.pf.t
scoreboard objectives add bw.pf.t dummy
# 速建防御塔用「放下生物蛋」的统计来确认是谁放的（正常路径靠它，兜底见 item/tower_place_fallback）
scoreboard objectives remove bw.tower.use
scoreboard objectives add bw.tower.use minecraft.used:minecraft.zombie_spawn_egg
# 铁傀儡守卫：同样用「放下生物蛋」的统计认放置者（兜底见 item/golem_owner）
scoreboard objectives remove bw.golem.use
scoreboard objectives add bw.golem.use minecraft.used:minecraft.iron_golem_spawn_egg
# 蠹虫雪球：投掷雪球时触发（照搭桥蛋的 use.egg）
scoreboard objectives remove use.snowball
scoreboard objectives add use.snowball used:minecraft.snowball
# 职业模式：「职业选择」道具走 consumable + 进度 minecraft:bedwars/class_select 触发
#（右击空气时 minecraft.used:<物品> 统计不触发，所以不能用统计）
# 对话框里的按钮用 /trigger 回传选择（1 战士 / 2 弓箭手 / 3 建筑师 / 4 矿工）
scoreboard objectives remove bw.class.pick
scoreboard objectives add bw.class.pick trigger "起床|职业选择"
# 丢出「职业选择」道具时，靠这个统计找到是谁丢的
scoreboard objectives remove bw.class.drop
scoreboard objectives add bw.class.drop minecraft.dropped:minecraft.paper
scoreboard objectives remove bw.class.tmp
scoreboard objectives add bw.class.tmp dummy
scoreboard objectives remove bw.class
scoreboard objectives add bw.class dummy "起床|职业"
# 魔法牛奶 / 无敌卷轴 的剩余秒数
scoreboard objectives remove bw.milk.t
scoreboard objectives add bw.milk.t dummy
scoreboard objectives remove bw.invul.t
scoreboard objectives add bw.invul.t dummy
scoreboard objectives remove use.egg
scoreboard objectives remove bw.team
scoreboard objectives remove snow.tick
scoreboard objectives add snow.tick dummy "Snow: TNTRUN block Time"
scoreboard objectives add bw.team dummy "起床|队伍选择"
scoreboard objectives remove music_trigger

scoreboard objectives add ingameid dummy "游戏内ID"
scoreboard objectives add merchant.coin dummy "\u00a7b\u00a7l商贾传奇 \u00a7e金钱"
scoreboard objectives add use.egg used:minecraft.egg
# 动作
scoreboard objectives remove action.jump
scoreboard objectives add action.jump minecraft.custom:minecraft.jump "动作|Jump"
scoreboard objectives remove action.sneak
scoreboard objectives add action.sneak minecraft.custom:minecraft.sneak_time "动作|Sneak"
scoreboard objectives remove action.walk
scoreboard objectives add action.walk minecraft.custom:minecraft.walk_one_cm "动作|Walk"
scoreboard objectives remove action.sprint
scoreboard objectives add action.sprint minecraft.custom:minecraft.sprint_one_cm "动作|Sprint"

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
scoreboard objectives add music_trigger trigger "音乐操作"

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
defaultgamemode survival
# function inits/reset_random
# function inits/resetuuid
kill @e[tag=lobby.car,type=minecart]

execute in overworld run forceload add 0 0
# scoreboard objectives remove leave
scoreboard objectives add leave minecraft.custom:minecraft.leave_game "退出游戏"
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

gamerule elytra_movement_check false
gamerule player_movement_check false

forceload add 0 0 0 0

scoreboard objectives add touzi.count dummy "还能刷新几次骰子"

execute unless score hunger.state state matches 1.. run execute in airworld run forceload remove all

kill @e[type=firework_rocket]
kill @e[type=fireball]
# kill @e[type=item]

gamerule max_block_modifications 1145141
gamerule max_command_forks 1145141
gamerule max_command_sequence_length 1145141

scoreboard players reset * bw.board

# 队伍数量开关（bw.teamcount state：2 = 两队，其它值 / 没设过 = 四队）
# bw.mode state 现在直接用到 0..7，旧存档的 4..7 迁移已删除（否则新模式一 reload 就被冲掉）


scoreboard players set GENERAL.dev_mode board 0
function #minecraft:dev_on
execute unless score GENERAL.dev_mode board matches 1 run function minecraft:dev_off

execute in overworld run forceload remove -1 -1 0 0 
execute in overworld run forceload add -1 -1 0 0 

# 注册快捷开始游戏的自动ID与加入命令（供 /trigger quickplay set <id> 使用）
scoreboard players set quickplay.showmode temp 0
function minecraft:lobby/quickplay/quickplay_lists