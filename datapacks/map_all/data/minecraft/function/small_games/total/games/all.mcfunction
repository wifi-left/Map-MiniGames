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

data modify storage minecraft:temp random_games_all.games append value {id:1,name:"\u00a7d方块躲猫猫",state_var:"hide.state state",start_func:["execute as @a[tag=play.total] run function hideseek/join","function hideseek/trystart"]}
data modify storage minecraft:temp random_games_all.games append value {id:2,name:"\u00a7bTNTRUN",state_var:"snow.state state",start_func:["execute as @a[tag=play.total] run function snow/join","scoreboard players set snow.tntrun state 1","function snow/trystart"]}
data modify storage minecraft:temp random_games_all.games append value {id:3,name:"\u00a76掘一死战",state_var:"snow.state state",start_func:["scoreboard players set snow.tntrun state 0","execute as @a[tag=play.total] run function snow/join","function snow/trystart"]}
data modify storage minecraft:temp random_games_all.games append value {id:4,name:"\u00a7d击退大赛",state_var:"repel state",start_func:["execute as @a[tag=play.total] run team join wait.repel @s","function repel/start"]}
data modify storage minecraft:temp random_games_all.games append value {id:5,name:"\u00a7e色盲派对",state_var:"color.state state",start_func:["execute as @a[tag=play.total] run function color/join","function color/teststart"]}
data modify storage minecraft:temp random_games_all.games append value {id:6,name:"\u00a7f信仰方块",state_var:"beli.state state",start_func:["execute as @a[tag=play.total] run function believer/join","function believer/teststart"]}
data modify storage minecraft:temp random_games_all.games append value {id:7,name:"\u00a7b道具躲猫猫",state_var:"hide2.state state",start_func:["execute as @a[tag=play.total] run function hide2/join","function hide2/trystart"]}
data modify storage minecraft:temp random_games_all.games append value {id:8,name:"\u00a75战桥",state_var:"duel.state state",start_func:["execute as @a[tag=play.total] run function duel/join","function duel/teststart"]}
data modify storage minecraft:temp random_games_all.games append value {id:9,name:"\u00a76烫手的山芋",state_var:"hotpot.state state",start_func:["execute as @a[tag=play.total] run function hotpotever/join","function hotpotever/teststart"]}
data modify storage minecraft:temp random_games_all.games append value {id:11,name:"\u00a73TNTWARS",state_var:"golf.state state",start_func:["execute as @a[tag=play.total] run function tntwars/join","function tntwars/trystart"]}
data modify storage minecraft:temp random_games_all.games append value {id:14,name:"\u00a72吸血鬼之夜",state_var:"endwolf.state state",start_func:["execute as @a[tag=play.total] run function endless_wolf/join","function endless_wolf/trystart"]}
data modify storage minecraft:temp random_games_all.games append value {id:22,name:"\u00a76幸运之柱",state_var:"pillar.state state",start_func:["execute as @a[tag=play.total] run function pillar/join","function pillar/trystart"]}

data modify storage minecraft:temp random_games_all.games append value {id:16,name:"\u00a7dBATTLE BOX",state_var:"battle.state state",start_func:["execute as @a[tag=play.total] run function battle/join","function battle/teststart_total"]}
data modify storage minecraft:temp random_games_all.games append value {id:17,name:"\u00a7e云端争霸",state_var:"sw.state state",start_func:["execute as @a[tag=play.total] run function cloud/join","function cloud/trystart"]}

data modify storage minecraft:temp random_games_all.games append value {id:18,name:"\u00a7b饥饿游戏(大型游戏)",state_var:"hunger.state state",start_func:["execute as @a[tag=play.total] run function hunger/join","function hunger/trystart"]}
data modify storage minecraft:temp random_games_all.games append value {id:19,name:"\u00a79生存游戏(大型游戏)",state_var:"sur.state state",start_func:["execute as @a[tag=play.total] run function surgame:join","function surgame:trystart"]}
data modify storage minecraft:temp random_games_all.games append value {id:15,name:"\u00a7a起床战争(大型游戏)",state_var:"bw.state state",start_func:["execute as @a[tag=play.total] run function bedwars/message/join","function minecraft:bedwars/before/trystart"]}

data modify storage minecraft:temp random_games_all.games append value {id:12,name:"\u00a7b冬泳怪鸽(不适合多人)",state_var:"pw.state state",start_func:["execute as @a[tag=play.total] run function poolwar/join","function poolwar/teststart"]}
data modify storage minecraft:temp random_games_all.games append value {id:10,name:"\u00a7d高尔夫游戏(不适合多人)",state_var:"golf.state state",start_func:["execute as @a[tag=play.total] run function golf/join","function golf/trystart"]}
data modify storage minecraft:temp random_games_all.games append value {id:13,name:"\u00a7f拆弹专家(不适合多人)",state_var:"boom.state state",start_func:["execute as @a[tag=play.total] run function bomb/join","function bomb/trystart"]}

data modify storage minecraft:temp random_games_all.games append value {id:21,name:"\u00a78密室杀手(废案)",state_var:"killer.state state",start_func:["execute as @a[tag=play.total] run function killerever/join","function killerever/teststart"]}

# data modify storage minecraft:temp random_games_all.games append value {id:20,name:"\u00a76烽火燎原(TODO)",state_var:"blaze.state state",start_func:["execute as @a[tag=play.total] run function blaze/join","function blaze/trystart"]}
