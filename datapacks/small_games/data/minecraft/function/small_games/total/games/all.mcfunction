# hideseek 1
# Snow TNTRUN 2
# Snow Pick 3
# Repeling 4
# Color 5
# Block Believer 6
# Hide tool 7
# Duel 8
# Hot Potato 9
# GOLF 10
# TNTwars 11

data remove storage minecraft:temp random_games_all

data modify storage minecraft:temp random_games_all.games append value {id:1,name:"\u00a7d方块躲猫猫",prefix:"[策略游戏]",desc:"伪装为方块进行躲猫猫！",state_var:"hide.state state",start_func:["execute as @a[tag=play.total] run function hideseek/join","function hideseek/trystart"]}
data modify storage minecraft:temp random_games_all.games append value {id:23,name:"\u00a7a贪吃蛇",prefix:"[策略游戏]",desc:"长长尾巴，小心！",state_var:"sneak.state state",start_func:["execute as @a[tag=play.total] run function sneak/join","function sneak/trystart"]}
data modify storage minecraft:temp random_games_all.games append value {id:31,name:"\u00a7e吃豆人",prefix:"[街机游戏]",desc:"吃豆！好吃！",state_var:"pacman.state state",start_func:["execute as @a[tag=play.total] run function pacman/join","function pacman/trystart"]}
data modify storage minecraft:temp random_games_all.games append value {id:32,name:"\u00a7d一掘到底",prefix:"[街机游戏]",desc:"挖到底！挖穿这个世界！",state_var:"miner.state state",start_func:["execute as @a[tag=play.total] run function miner/join","function miner/trystart"]}
data modify storage minecraft:temp random_games_all.games append value {id:33,name:"\u00a74挖矿达人",prefix:"[街机游戏]",desc:"要致富，先挖矿！获得更多的金币！",state_var:"mining.state state",start_func:["execute as @a[tag=play.total] run function mining/join","function mining/trystart"]}
data modify storage minecraft:temp random_games_all.games append value {id:37,name:"\u00a7b钓鱼达人",prefix:"[街机游戏]",desc:"钓鱼！获得更多的金币！",state_var:"fishing.state state",start_func:["execute as @a[tag=play.total] run function fishing/join","function fishing/trystart"]}
data modify storage minecraft:temp random_games_all.games append value {id:2,name:"\u00a7bTNTRUN",prefix:"[策略游戏]",desc:"快跑！你脚下的方块会自己掉落。",state_var:"snow.state state",start_func:["execute as @a[tag=play.total] run function snow/join","scoreboard players set snow.tntrun board 1","function snow/trystart"]}
data modify storage minecraft:temp random_games_all.games append value {id:3,name:"\u00a76掘一死战",prefix:"[策略游戏]",desc:"挖掉你对手脚下的方块！",state_var:"snow.state state",start_func:["scoreboard players set snow.tntrun board 0","execute as @a[tag=play.total] run function snow/join","function snow/trystart"]}
data modify storage minecraft:temp random_games_all.games append value {id:30,name:"\u00a7c掘一死战(爆炸弓版)",prefix:"[策略游戏]",desc:"用弓射出箭把对手的脚下方块破坏！",state_var:"snow.state state",start_func:["scoreboard players set snow.tntrun board 3","execute as @a[tag=play.total] run function snow/join","function snow/trystart"]}
data modify storage minecraft:temp random_games_all.games append value {id:29,name:"\u00a7a雪崩大战(混合模式)",prefix:"[策略游戏]",desc:"掘一死战与 TNTRUN 的混合模式。\n掘一死战：挖掉你对手脚下的方块！\nTNTRUN：快跑！你脚下的方块会自己掉落。",state_var:"snow.state state",start_func:["scoreboard players set snow.tntrun board 2","execute as @a[tag=play.total] run function snow/join","function snow/trystart"]}
data modify storage minecraft:temp random_games_all.games append value {id:34,name:"\u00a7b抢椅子",prefix:"[快速反应事件游戏]",desc:"抢走板凳，默不作声",state_var:"chair.state state",start_func:["execute as @a[tag=play.total] run function chair/join","function chair/trystart"]}
data modify storage minecraft:temp random_games_all.games append value {id:4,name:"\u00a7d击退大赛",prefix:"[策略游戏]",desc:"轻轻敲击沉睡的心灵~",state_var:"repel state",start_func:["execute as @a[tag=play.total] run team join wait.repel @s","function repel/start"]}
data modify storage minecraft:temp random_games_all.games append value {id:5,name:"\u00a7e色盲派对",prefix:"[快速反应事件游戏]",desc:"擦亮你的眼睛！找和手上相同的方块！",state_var:"color.state state",start_func:["execute as @a[tag=play.total] run function color/join","function color/teststart"]}
data modify storage minecraft:temp random_games_all.games append value {id:6,name:"\u00a7f信仰方块",prefix:"[策略游戏]",desc:"小心！方块会随机自行消失。",state_var:"beli.state state",start_func:["execute as @a[tag=play.total] run function believer/join","function believer/teststart"]}
data modify storage minecraft:temp random_games_all.games append value {id:9,name:"\u00a76烫手的山芋",prefix:"[策略游戏]",desc:"不要持有土豆！",state_var:"hotpot.state state",start_func:["execute as @a[tag=play.total] run function hotpotever/join","function hotpotever/teststart"]}
data modify storage minecraft:temp random_games_all.games append value {id:11,name:"\u00a73TNTWARS",prefix:"[策略游戏]",desc:"使用TNT相关道具，把对手炸下虚空！",state_var:"golf.state state",start_func:["execute as @a[tag=play.total] run function tntwars/join","function tntwars/trystart"]}
data modify storage minecraft:temp random_games_all.games append value {id:21,name:"\u00a7c密室杀手",prefix:"[策略游戏]",desc:"全新版！找到杀手，活下去！",state_var:"killer.state state",start_func:["execute as @a[tag=play.total] run function killerever/join","function killerever/teststart"]}
data modify storage minecraft:temp random_games_all.games append value {id:14,name:"\u00a72吸血鬼之夜",prefix:"[策略游戏]",desc:"存活下去，就是胜利。",state_var:"endwolf.state state",start_func:["execute as @a[tag=play.total] run function endless_wolf/join","function endless_wolf/trystart"]}
data modify storage minecraft:temp random_games_all.games append value {id:40,name:"\u00a7b彩蛋猎人",prefix:"[休闲游戏]",desc:"寻找地图中发光的彩蛋！获得更多的彩蛋的人将会获胜！",state_var:"finder.state state",start_func:["execute as @a[tag=play.total] run function finder/join","function finder/trystart"]}
data modify storage minecraft:temp random_games_all.games append value {id:39,name:"\u00a7a建筑猜猜乐",prefix:"[建筑游戏]",desc:"通过建筑，让别人知道你的词汇是什么。",state_var:"build_guess.state state",start_func:["execute as @a[tag=play.total] run function build_guess/join","function build_guess/trystart"]}
data modify storage minecraft:temp random_games_all.games append value {id:38,name:"\u00a7f你建我跑",prefix:"[跑酷游戏]",desc:"建造一个你能过去但其他人过不去的跑酷！",state_var:"build_parkour.state state",start_func:["execute as @a[tag=play.total] run function build_parkour/join","function build_parkour/trystart"]}
data modify storage minecraft:temp random_games_all.games append value {id:35,name:"\u00a7d随机跑酷",prefix:"[跑酷游戏]",desc:"跑到终点，小心火球（？）",state_var:"random_parkour.state state",start_func:["execute as @a[tag=play.total] run function random_parkour/join","function random_parkour/trystart"]}
data modify storage minecraft:temp random_games_all.games append value {id:36,name:"\u00a7e足球游戏",prefix:"[球类游戏]",desc:"简易版本的足球比赛！",state_var:"ballgame.state state",start_func:["execute as @a[tag=play.total] run function ballgame/join","scoreboard players set ballgame.type board 0","function ballgame/trystart"]}

data modify storage minecraft:temp random_games_all.games append value {id:8,name:"\u00a75战桥",prefix:"[PVP游戏]",desc:"进入对方守护的得分区，夺得胜利！",state_var:"duel.state state",start_func:["execute as @a[tag=play.total] run function duel/join","function duel/teststart"]}
data modify storage minecraft:temp random_games_all.games append value {id:22,name:"\u00a76幸运之柱",prefix:"[PVP游戏]",desc:"你的运气怎么样呢？",state_var:"pillar.state state",start_func:["execute as @a[tag=play.total] run function pillar/join","function pillar/trystart"]}

data modify storage minecraft:temp random_games_all.games append value {id:16,name:"\u00a7dBATTLE BOX",prefix:"[PVP游戏]",desc:"选择道具，占领中心羊毛，让其变为你的队伍颜色！\n该游戏需要人数均匀。\n若不均匀多余玩家将旁观。",state_var:"battle.state state",start_func:["execute as @a[tag=play.total] run function battle/join","function battle/teststart_total"]}
data modify storage minecraft:temp random_games_all.games append value {id:17,name:"\u00a7e云端争霸",prefix:"[PVP游戏]",desc:"空岛上的对战！淘汰其他对手！\n该游戏最多支持12人游玩。",state_var:"sw.state state",start_func:["execute as @a[tag=play.total] run function cloud/join","function cloud/trystart"]}

data modify storage minecraft:temp random_games_all.games append value {id:18,name:"\u00a7b饥饿游戏",prefix:"[PVP游戏]",desc:"经典游戏：饥饿游戏\n找宝箱，开启你的胜利之路。\n大型游戏，适合多人",state_var:"hunger.state state",start_func:["execute as @a[tag=play.total] run function hunger/join","function hunger/trystart"]}
data modify storage minecraft:temp random_games_all.games append value {id:15,name:"\u00a7a起床战争",prefix:"[PVP游戏]",desc:"经典游戏：起床战争\n大型游戏，适合多人",state_var:"bw.state state",start_func:["execute as @a[tag=play.total] run function bedwars/message/join","function minecraft:bedwars/before/trystart"]}

data modify storage minecraft:temp random_games_all.games append value {id:26,name:"\u00a7b烽火燎原丶占点模式",prefix:"[PVP游戏]",desc:"占领点位，夺取胜利。\n大型游戏，适合多人",state_var:"blaze.state state",start_func:["execute as @a[tag=play.total] run function blaze/join","scoreboard players set blaze.mode board 1","function blaze/trystart"]}

data modify storage minecraft:temp random_games_all.games append value {id:27,name:"\u00a7b烽火燎原丶团战模式",prefix:"[PVP游戏]",desc:"淘汰对手队伍！\n大型游戏，适合多人",state_var:"blaze.state state",start_func:["execute as @a[tag=play.total] run function blaze/join","scoreboard players set blaze.mode board 2","function blaze/trystart"]}

data modify storage minecraft:temp random_games_all.games append value {id:28,name:"\u00a7b烽火燎原丶警匪模式",prefix:"[PVP游戏]",desc:"不要让匪占领中心点位！\n大型游戏，适合多人",state_var:"blaze.state state",start_func:["execute as @a[tag=play.total] run function blaze/join","scoreboard players set blaze.mode board 3","function blaze/trystart"]}

data modify storage minecraft:temp random_games_all.games append value {id:19,name:"\u00a79生存游戏",prefix:"[PVP游戏]",desc:"活下去，就是胜利！\n大型游戏，适合多人",state_var:"sur.state state",start_func:["execute as @a[tag=play.total] run function surgame:join","function surgame:trystart"]}

data modify storage minecraft:temp random_games_all.games append value {id:12,name:"\u00a7b冬泳怪鸽",prefix:"[人多不推荐]",desc:"咕咕咕咕咕~\n不适合太多人游玩\n建议游玩人数：少于6人",state_var:"pw.state state",start_func:["execute as @a[tag=play.total] run function poolwar/join","function poolwar/teststart"]}
data modify storage minecraft:temp random_games_all.games append value {id:10,name:"\u00a7d高尔夫游戏",prefix:"[人多不推荐]",desc:"Ping, Pong!\n不适合多人游玩\n适合1~3人的时候游戏",state_var:"golf.state state",start_func:["execute as @a[tag=play.total] run function golf/join","function golf/trystart"]}
data modify storage minecraft:temp random_games_all.games append value {id:13,name:"\u00a7f拆弹专家",prefix:"[人多不推荐]",desc:"Sisisii~ Boooooom!\n不适合多人游玩\n适合1~3人的时候游戏",state_var:"boom.state state",start_func:["execute as @a[tag=play.total] run function bomb/join","function bomb/trystart"]}

data modify storage minecraft:temp random_games_all.games append value {id:25,name:"\u00a7d赛猪",prefix:"[不推荐]",desc:"冲啊！\n体验感有点差，不建议游玩",state_var:"car.state state",start_func:["execute as @a[tag=play.total] run function minecraft:car_race/join","function car_race/teststart"]}

data modify storage minecraft:temp random_games_all.games append value {id:7,name:"\u00a7b道具躲猫猫",prefix:"[废案]",desc:"此游戏为废案，游玩体验可能不好，不建议游玩。",state_var:"hide2.state state",start_func:["execute as @a[tag=play.total] run function hide2/join","function hide2/trystart"]}
data modify storage minecraft:temp random_games_all.games append value {id:24,name:"\u00a76船战",prefix:"[废案]",desc:"此游戏为废案，游玩体验可能不好，不建议游玩。",state_var:"btw.state state",start_func:["execute as @a[tag=play.total] run function minecraft:boatwars/join","function boatwars/trystart"]}