##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @s ["\n§6 ※ 快速加入游戏 ※ §b游戏ID列表：\n"]
# \n\u00a7a2 \u00a77- \u00a7bBattle Box\n\u00a7a3 \u00a77- \u00a7b信仰方块\n\u00a7a4 \u00a77- \u00a7b冰船\n\u00a7a5 \u00a77- \u00a7b赛车\n\u00a7a6 \u00a77- \u00a7b色盲大战\n\u00a7a7 \u00a77- \u00a7b星跳水立方\n\u00a7a8 \u00a77- \u00a7b战桥\n\u00a7a9 \u00a77- \u00a7b高尔夫\n\u00a7a10 \u00a77- \u00a7b躲猫猫（道具）\n\u00a7a11 \u00a77- \u00a7b躲猫猫（方块）\n\u00a7a12 \u00a77- \u00a7b烫手的山芋\n\u00a7a13 \u00a77- \u00a7b饥饿游戏\n\u00a7a14 \u00a77- \u00a7b职业战争\n\u00a7a15 \u00a77- \u00a7b密室杀手\n\u00a7a16 \u00a77- \u00a7bLive Longest\n\u00a7a17 \u00a77- \u00a7b关卡跑酷\n\u00a7a18 \u00a77- \u00a7b冬泳怪鸽\n\u00a7a19 \u00a77- \u00a7b棋类游戏\n\u00a7a20 \u00a77- \u00a7b狼人杀\n\u00a7a21 \u00a77- \u00a7b小游戏合集\n\u00a7a22 \u00a77- \u00a7bSnow\n\u00a7a23 \u00a77- \u00a7bTNT Wars\n\u00a7a24 \u00a77- \u00a7bZombie Days（PVE）\n\u00a7a25 \u00a77- \u00a7b生存游戏\n\u00a7a26 \u00a77- \u00a7b起床战争\n
data modify storage minecraft:temp dialog_tmp.actions set value []

function minecraft:lobby/quickplay_info {id:21,name:"小游戏合集",color:"f§l"}

function minecraft:lobby/quickplay_info {id:33,name:"击退游戏",color:b}
function minecraft:lobby/quickplay_info {id:3,name:"信仰方块",color:b}
function minecraft:lobby/quickplay_info {id:6,name:"色盲大战",color:b}
function minecraft:lobby/quickplay_info {id:10,name:"躲猫猫（道具）",color:b}
function minecraft:lobby/quickplay_info {id:11,name:"躲猫猫（方块）",color:b}
function minecraft:lobby/quickplay_info {id:12,name:"烫手的山芋",color:b}
function minecraft:lobby/quickplay_info {id:18,name:"冬泳怪鸽",color:b}
function minecraft:lobby/quickplay_info {id:19,name:"棋类游戏",color:b}
function minecraft:lobby/quickplay_info {id:36,name:"贪吃蛇",color:b}
function minecraft:lobby/quickplay_info {id:37,name:"吃豆人",color:b}
function minecraft:lobby/quickplay_info {id:22,name:"雪崩类游戏",color:b}
function minecraft:lobby/quickplay_info {id:23,name:"TNT Wars",color:b}
function minecraft:lobby/quickplay_info {id:20,name:"狼人杀",color:b}

function minecraft:lobby/quickplay_info {id:8,name:"战桥",color:d}
function minecraft:lobby/quickplay_info {id:2,name:"Battle Box",color:d}
function minecraft:lobby/quickplay_info {id:5,name:"吸血鬼之夜",color:d}

function minecraft:lobby/quickplay_info {id:14,name:"职业战争",color:c}
function minecraft:lobby/quickplay_info {id:13,name:"饥饿游戏",color:c}
function minecraft:lobby/quickplay_info {id:30,name:"燎原烽火",color:c}
function minecraft:lobby/quickplay_info {id:31,name:"云端争霸",color:c}
function minecraft:lobby/quickplay_info {id:32,name:"幸运之柱",color:c}
function minecraft:lobby/quickplay_info {id:25,name:"生存游戏",color:c}
function minecraft:lobby/quickplay_info {id:26,name:"起床战争",color:c}

function minecraft:lobby/quickplay_info {id:27,name:"桌游",color:3}
function minecraft:lobby/quickplay_info {id:28,name:"拆弹专家",color:3}
function minecraft:lobby/quickplay_info {id:9,name:"高尔夫",color:3}
function minecraft:lobby/quickplay_info {id:7,name:"星跳水立方",color:3}

function minecraft:lobby/quickplay_info {id:24,name:"Zombie Days (PVE)",color:2}
function minecraft:lobby/quickplay_info {id:29,name:"蚀界行者 (PVE)",color:2}

function minecraft:lobby/quickplay_info {id:34,name:"坑爹跑酷比赛",color:6}
function minecraft:lobby/quickplay_info {id:17,name:"关卡跑酷",color:6}

function minecraft:lobby/quickplay_info {id:15,name:"密室杀手 (废案)",color:7}
function minecraft:lobby/quickplay_info {id:16,name:"Live Longest (废案)",color:7}
function minecraft:lobby/quickplay_info {id:35,name:"船战 (废案)",color:7}
function minecraft:lobby/quickplay_info {id:4,name:"赛猪游戏 (废案)",color:7}

tellraw @s "\n§e使用 §6/trigger quickplay set <游戏ID>§b ，或者点击上方文字快速进入"
