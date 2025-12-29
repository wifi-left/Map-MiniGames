tellraw @s ["\n§6 ※ 快速加入游戏 ※ §b游戏ID列表：\n"]

data modify storage minecraft:temp dialog_tmp.actions set value []

function minecraft:lobby/quickplay_info {id:21,name:"小游戏派对",color:"f§l"}
function minecraft:lobby/quickplay_info {id:33,name:"击退游戏",color:b}
function minecraft:lobby/quickplay_info {id:40,name:"抢板凳",color:b}
function minecraft:lobby/quickplay_info {id:3,name:"信仰方块",color:b}
function minecraft:lobby/quickplay_info {id:6,name:"色盲大战",color:b}
function minecraft:lobby/quickplay_info {id:11,name:"方块躲猫猫",color:b}
function minecraft:lobby/quickplay_info {id:12,name:"烫手的山芋",color:b}
function minecraft:lobby/quickplay_info {id:18,name:"冬泳怪鸽",color:b}
function minecraft:lobby/quickplay_info {id:19,name:"棋类游戏",color:b}
function minecraft:lobby/quickplay_info {id:36,name:"贪吃蛇",color:b}
function minecraft:lobby/quickplay_info {id:37,name:"吃豆人",color:b}
function minecraft:lobby/quickplay_info {id:16,name:"追杀游戏",color:b}
function minecraft:lobby/quickplay_info {id:38,name:"一掘到底",color:b}
function minecraft:lobby/quickplay_info {id:43,name:"钓鱼达人",color:b}
function minecraft:lobby/quickplay_info {id:39,name:"挖矿达人",color:b}
function minecraft:lobby/quickplay_info {id:22,name:"雪崩类游戏",color:b}
function minecraft:lobby/quickplay_info {id:23,name:"TNT Wars",color:b}
function minecraft:lobby/quickplay_info {id:15,name:"密室杀手",color:b}
function minecraft:lobby/quickplay_info {id:47,name:"一箭毙命",color:b}
function minecraft:lobby/quickplay_info {id:20,name:"狼人杀",color:b}
function minecraft:lobby/quickplay_info {id:42,name:"球类游戏",color:b}
function minecraft:lobby/quickplay_info {id:45,name:"彩蛋猎人",color:b}
function minecraft:lobby/quickplay_info {id:46,name:"建筑猜猜乐",color:b}
function minecraft:lobby/quickplay_info {id:49,name:"不要相信T氏的话",color:b}

function minecraft:lobby/quickplay_info {id:44,name:"你建我跑",color:b}

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

function minecraft:lobby/quickplay_info {id:48,name:"飞行大赛",color:3}
function minecraft:lobby/quickplay_info {id:27,name:"桌游",color:3}
function minecraft:lobby/quickplay_info {id:28,name:"拆弹专家",color:3}
function minecraft:lobby/quickplay_info {id:9,name:"高尔夫",color:3}
function minecraft:lobby/quickplay_info {id:7,name:"星跳水立方",color:3}

function minecraft:lobby/quickplay_info {id:24,name:"Zombie Days (PVE)",color:2}
function minecraft:lobby/quickplay_info {id:29,name:"蚀界行者 (PVE)",color:2}

function minecraft:lobby/quickplay_info {id:50,name:"1、2、3，木头人",color:6}
function minecraft:lobby/quickplay_info {id:41,name:"随机跑酷",color:6}
function minecraft:lobby/quickplay_info {id:34,name:"坑爹跑酷比赛",color:6}
function minecraft:lobby/quickplay_info {id:17,name:"关卡跑酷",color:6}

function minecraft:lobby/quickplay_info {id:35,name:"船战 (废案)",color:7}
function minecraft:lobby/quickplay_info {id:4,name:"赛猪游戏 (废案)",color:7}
function minecraft:lobby/quickplay_info {id:10,name:"道具躲猫猫 (废案)",color:7}

tellraw @s "\n§e使用 §6/trigger quickplay set <游戏ID>§b ，或者点击上方文字快速进入"
