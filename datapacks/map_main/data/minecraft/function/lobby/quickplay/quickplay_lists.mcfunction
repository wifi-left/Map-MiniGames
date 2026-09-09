# 快捷开始游戏列表：每行一个游戏
#   function minecraft:lobby/quickplay_info {category:"分类名",name:"显示名",color:"颜色代码",join:"加入游戏的命令"}
# category 为 main 时直接显示在主界面，其他分类在主界面显示一个分类按钮，点开后进入该分类的子界面
# 同一 category 的条目请连续书写；游戏ID按书写顺序自动分配（从 2 开始，1 保留给聊天栏列表），不需要手写
execute if score quickplay.showmode temp matches 1 run tellraw @s ["\n§6 ※ 快速加入游戏 ※ §b游戏ID列表：\n"]
scoreboard players set quickplay.id temp 1
data remove storage minecraft:temp quickplay.cat_last
execute if score quickplay.showmode temp matches 0 run data modify storage minecraft:quickplay joins set value {}

function minecraft:lobby/quickplay_info {category:"main",name:"小游戏派对",color:"f§l",join:"function small_games/total/join"}

function minecraft:lobby/quickplay_info {category:"休闲类游戏",name:"击退游戏",color:b,join:"function repel/join"}
function minecraft:lobby/quickplay_info {category:"休闲类游戏",name:"抢板凳",color:b,join:"function chair/join"}
function minecraft:lobby/quickplay_info {category:"休闲类游戏",name:"信仰方块",color:b,join:"function believer/join"}
function minecraft:lobby/quickplay_info {category:"休闲类游戏",name:"色盲大战",color:b,join:"function color/join"}
function minecraft:lobby/quickplay_info {category:"休闲类游戏",name:"方块躲猫猫",color:b,join:"function hideseek/join"}
function minecraft:lobby/quickplay_info {category:"休闲类游戏",name:"烫手的山芋",color:b,join:"function hotpotever/join"}
function minecraft:lobby/quickplay_info {category:"休闲类游戏",name:"冬泳怪鸽",color:b,join:"function poolwar/join"}
function minecraft:lobby/quickplay_info {category:"休闲类游戏",name:"棋类游戏",color:b,join:"function small_games/chess/join"}
function minecraft:lobby/quickplay_info {category:"休闲类游戏",name:"贪吃蛇",color:b,join:"function sneak/join"}
function minecraft:lobby/quickplay_info {category:"休闲类游戏",name:"吃豆人",color:b,join:"function pacman/join"}
function minecraft:lobby/quickplay_info {category:"休闲类游戏",name:"追杀游戏",color:b,join:"function live/join"}
function minecraft:lobby/quickplay_info {category:"休闲类游戏",name:"一掘到底",color:b,join:"function miner/join"}
function minecraft:lobby/quickplay_info {category:"休闲类游戏",name:"钓鱼达人",color:b,join:"function fishing/join"}
function minecraft:lobby/quickplay_info {category:"休闲类游戏",name:"挖矿达人",color:b,join:"function mining/join"}
function minecraft:lobby/quickplay_info {category:"休闲类游戏",name:"雪崩类游戏",color:b,join:"function snow/join"}
function minecraft:lobby/quickplay_info {category:"休闲类游戏",name:"TNT Wars",color:b,join:"function tntwars/join"}
function minecraft:lobby/quickplay_info {category:"休闲类游戏",name:"密室杀手",color:b,join:"function killerever/join"}
function minecraft:lobby/quickplay_info {category:"休闲类游戏",name:"一箭毙命",color:b,join:"function one_arrow/join"}
function minecraft:lobby/quickplay_info {category:"休闲类游戏",name:"狼人杀",color:b,join:"function twolf/join"}
function minecraft:lobby/quickplay_info {category:"休闲类游戏",name:"球类游戏",color:b,join:"function ballgame/join"}
function minecraft:lobby/quickplay_info {category:"休闲类游戏",name:"彩蛋猎人",color:b,join:"function finder/join"}
function minecraft:lobby/quickplay_info {category:"休闲类游戏",name:"建筑猜猜乐",color:b,join:"function build_guess/join"}
function minecraft:lobby/quickplay_info {category:"休闲类游戏",name:"不要相信T氏的话",color:b,join:"function t_says/join"}
function minecraft:lobby/quickplay_info {category:"休闲类游戏",name:"你建我跑",color:b,join:"function build_parkour/join"}

function minecraft:lobby/quickplay_info {category:"灾难类游戏",name:"灾难：雪灾",color:b,join:"function disaster/snow/join"}

function minecraft:lobby/quickplay_info {category:"PVP类游戏",name:"绵羊突击队",color:d,join:"function sheepwars/join"}
function minecraft:lobby/quickplay_info {category:"PVP类游戏",name:"战桥",color:d,join:"function duel/join"}
function minecraft:lobby/quickplay_info {category:"PVP类游戏",name:"Battle Box",color:d,join:"function battle/join"}
function minecraft:lobby/quickplay_info {category:"PVP类游戏",name:"吸血鬼之夜",color:d,join:"function endless_wolf/join"}

function minecraft:lobby/quickplay_info {category:"PVP类游戏",name:"职业战争",color:c,join:"function job_pvp/join"}
function minecraft:lobby/quickplay_info {category:"PVP类游戏",name:"饥饿游戏",color:c,join:"function hunger/join"}
function minecraft:lobby/quickplay_info {category:"PVP类游戏",name:"燎原烽火",color:c,join:"function blaze/join"}
function minecraft:lobby/quickplay_info {category:"PVP类游戏",name:"云端争霸",color:c,join:"function cloud/join"}
function minecraft:lobby/quickplay_info {category:"PVP类游戏",name:"幸运之柱",color:c,join:"function pillar/join"}
function minecraft:lobby/quickplay_info {category:"PVP类游戏",name:"生存游戏",color:c,join:"function surgame:join"}
function minecraft:lobby/quickplay_info {category:"PVP类游戏",name:"起床战争",color:c,join:"function bedwars/message/join"}

function minecraft:lobby/quickplay_info {category:"杂项",name:"搭路练习",color:6,join:"function bridge_practice/join"}

function minecraft:lobby/quickplay_info {category:"单多人休闲类游戏",name:"飞行大赛",color:3,join:"function elytra/join"}
function minecraft:lobby/quickplay_info {category:"单多人休闲类游戏",name:"桌游",color:3,join:"function desk/join"}
function minecraft:lobby/quickplay_info {category:"单多人休闲类游戏",name:"拆弹专家",color:3,join:"function bomb/join"}
function minecraft:lobby/quickplay_info {category:"单多人休闲类游戏",name:"高尔夫",color:3,join:"function golf/join"}
function minecraft:lobby/quickplay_info {category:"单多人休闲类游戏",name:"星跳水立方",color:3,join:"function dropper/join"}

function minecraft:lobby/quickplay_info {category:"PVE类游戏",name:"Zombie Days (PVE)",color:2,join:"function zombieever/join"}
function minecraft:lobby/quickplay_info {category:"PVE类游戏",name:"蚀界行者 (PVE)",color:2,join:"function stronghold/join"}

function minecraft:lobby/quickplay_info {category:"跑酷类游戏",name:"1、2、3，木头人",color:6,join:"function mutouren/join"}
function minecraft:lobby/quickplay_info {category:"跑酷类游戏",name:"随机跑酷",color:6,join:"function random_parkour/join"}
function minecraft:lobby/quickplay_info {category:"跑酷类游戏",name:"坑爹跑酷比赛",color:6,join:"function parkourrace/join"}
function minecraft:lobby/quickplay_info {category:"跑酷类游戏",name:"关卡跑酷",color:6,join:"function lpark/join"}

function minecraft:lobby/quickplay_info {category:"废案",name:"船战 (废案)",color:7,join:"function boatwars/join"}
function minecraft:lobby/quickplay_info {category:"废案",name:"赛猪游戏 (废案)",color:7,join:"function car_race/join"}
function minecraft:lobby/quickplay_info {category:"废案",name:"道具躲猫猫 (废案)",color:7,join:"function hide2/join"}

execute if score quickplay.showmode temp matches 1 run tellraw @s "\n§e使用 §6/trigger quickplay set <游戏ID>§b ，或者点击上方文字快速进入"
