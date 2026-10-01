##
## 「不要相信T氏的话」任务表
##
## storage minecraft:t_says:
##   tasks.<组名> = [ {id,msg,time,start,judge,timeout?}, ... ]
##     id      场景编号（判定函数与响应式动作靠它分支，必须唯一）
##     msg     任务文案（JSON 文本组件列表；show_msg 用 interpret:true 显示）
##     time    判定时限（秒）
##     start   场景搭建函数（没有搭建的用 minecraft:t_says/scene/start/none）
##     judge   每 tick 轮询判定函数（响应式判定的用 minecraft:t_says/scene/judging/none）
##     opts    可选：{timeout:"all"} = 时限到了"什么都没做"的玩家算完成（否定句场景，如"别跳"）
##   groups = 抽取用的组表（分组均衡：每组等概率 1/组数）
##           想给某组加权，就把组名在列表里重复写多份
##
## 抽取在 t_says/scene/random_scene.mcfunction：先抽组、再取模抽组内行
##   ※ groups 列表长度变化时，必须同步修改 random_scene 里的 random 范围
##
## 加新任务：在对应组的列表里 append 一行即可（id 不能与已有 id 重复）
##

data modify storage minecraft:t_says tasks set value {}
data modify storage minecraft:t_says groups set value ["action","craft","wear","hand","use","block","fight"]

data modify storage minecraft:t_says tasks.action set value []
data modify storage minecraft:t_says tasks.craft set value []
data modify storage minecraft:t_says tasks.wear set value []
data modify storage minecraft:t_says tasks.hand set value []
data modify storage minecraft:t_says tasks.use set value []
data modify storage minecraft:t_says tasks.block set value []
data modify storage minecraft:t_says tasks.fight set value []

## ---- 动作类（响应式判定：t_says/action/*；也能放轮询判定）----
data modify storage minecraft:t_says tasks.action append value {id:1,msg:["跳下平台"],time:10,start:"minecraft:t_says/scene/start/none",judge:"minecraft:t_says/scene/judging/jump_from_platform"}
data modify storage minecraft:t_says tasks.action append value {id:2,msg:["跳一跳"],time:6,start:"minecraft:t_says/scene/start/none",judge:"minecraft:t_says/scene/judging/none"}
data modify storage minecraft:t_says tasks.action append value {id:3,msg:["别跳"],time:6,start:"minecraft:t_says/scene/start/none",judge:"minecraft:t_says/scene/judging/none",opts:{timeout:"all"}}
data modify storage minecraft:t_says tasks.action append value {id:4,msg:["走一走"],time:6,start:"minecraft:t_says/scene/start/none",judge:"minecraft:t_says/scene/judging/none"}
data modify storage minecraft:t_says tasks.action append value {id:5,msg:["不要动"],time:6,start:"minecraft:t_says/scene/start/none",judge:"minecraft:t_says/scene/judging/none",opts:{timeout:"all"}}
data modify storage minecraft:t_says tasks.action append value {id:6,msg:["蹲下"],time:6,start:"minecraft:t_says/scene/start/none",judge:"minecraft:t_says/scene/judging/none"}
data modify storage minecraft:t_says tasks.action append value {id:7,msg:["不要蹲下"],time:6,start:"minecraft:t_says/scene/start/none",judge:"minecraft:t_says/scene/judging/none",opts:{timeout:"all"}}
data modify storage minecraft:t_says tasks.action append value {id:20,msg:["躲避箭雨"],time:12,start:"minecraft:t_says/scene/start/none",judge:"minecraft:t_says/scene/judging/hide_arrow",opts:{timeout:"all"}}
data modify storage minecraft:t_says tasks.action append value {id:8,msg:["和玩家拥抱"],time:10,start:"minecraft:t_says/scene/start/none",judge:"minecraft:t_says/scene/judging/hugging_with_other"}
data modify storage minecraft:t_says tasks.action append value {id:9,msg:["跑酷到终点（钻石块）"],time:30,start:"minecraft:t_says/scene/start/parkour_to_the_end",judge:"minecraft:t_says/scene/judging/parkour_to_the_end"}
data modify storage minecraft:t_says tasks.action append value {id:23,msg:["跑一跑"],time:6,start:"minecraft:t_says/scene/start/none",judge:"minecraft:t_says/scene/judging/none"}

## ---- 合成类（id 10..19）----
data modify storage minecraft:t_says tasks.craft append value {id:10,msg:["合成：钻石剑"],time:21,start:"minecraft:t_says/scene/start/make_item",judge:"minecraft:t_says/scene/judging/make_item"}
data modify storage minecraft:t_says tasks.craft append value {id:11,msg:["合成：金剑"],time:21,start:"minecraft:t_says/scene/start/make_item",judge:"minecraft:t_says/scene/judging/make_item"}
data modify storage minecraft:t_says tasks.craft append value {id:12,msg:["合成：铁剑"],time:21,start:"minecraft:t_says/scene/start/make_item",judge:"minecraft:t_says/scene/judging/make_item"}
data modify storage minecraft:t_says tasks.craft append value {id:13,msg:["合成：木剑"],time:21,start:"minecraft:t_says/scene/start/make_item",judge:"minecraft:t_says/scene/judging/make_item"}
data modify storage minecraft:t_says tasks.craft append value {id:14,msg:["合成：石剑"],time:21,start:"minecraft:t_says/scene/start/make_item",judge:"minecraft:t_says/scene/judging/make_item"}
data modify storage minecraft:t_says tasks.craft append value {id:15,msg:["合成：木门"],time:21,start:"minecraft:t_says/scene/start/make_item",judge:"minecraft:t_says/scene/judging/make_item"}
data modify storage minecraft:t_says tasks.craft append value {id:16,msg:["合成：铁门"],time:21,start:"minecraft:t_says/scene/start/make_item",judge:"minecraft:t_says/scene/judging/make_item"}
data modify storage minecraft:t_says tasks.craft append value {id:17,msg:["合成：铁活版门"],time:21,start:"minecraft:t_says/scene/start/make_item",judge:"minecraft:t_says/scene/judging/make_item"}
data modify storage minecraft:t_says tasks.craft append value {id:18,msg:["合成：木活版门"],time:21,start:"minecraft:t_says/scene/start/make_item",judge:"minecraft:t_says/scene/judging/make_item"}
data modify storage minecraft:t_says tasks.craft append value {id:19,msg:["合成：箱子"],time:21,start:"minecraft:t_says/scene/start/make_item",judge:"minecraft:t_says/scene/judging/make_item"}
data modify storage minecraft:t_says tasks.craft append value {id:30,msg:["合成：盾牌"],time:21,start:"minecraft:t_says/scene/start/make_item",judge:"minecraft:t_says/scene/judging/make_item"}
data modify storage minecraft:t_says tasks.craft append value {id:31,msg:["合成：熔炉"],time:21,start:"minecraft:t_says/scene/start/make_item",judge:"minecraft:t_says/scene/judging/make_item"}
data modify storage minecraft:t_says tasks.craft append value {id:32,msg:["合成：面包"],time:21,start:"minecraft:t_says/scene/start/make_item",judge:"minecraft:t_says/scene/judging/make_item"}
data modify storage minecraft:t_says tasks.craft append value {id:33,msg:["合成：桶"],time:21,start:"minecraft:t_says/scene/start/make_item",judge:"minecraft:t_says/scene/judging/make_item"}
data modify storage minecraft:t_says tasks.craft append value {id:34,msg:["合成：剪刀"],time:21,start:"minecraft:t_says/scene/start/make_item",judge:"minecraft:t_says/scene/judging/make_item"}
data modify storage minecraft:t_says tasks.craft append value {id:35,msg:["合成：木镐"],time:21,start:"minecraft:t_says/scene/start/make_item",judge:"minecraft:t_says/scene/judging/make_item"}

## ---- 穿戴类：胸甲（id -10..-4）----
data modify storage minecraft:t_says tasks.wear append value {id:-10,msg:["穿上金胸甲"],time:6,start:"minecraft:t_says/scene/start/wear_item",judge:"minecraft:t_says/scene/judging/wear_item"}
data modify storage minecraft:t_says tasks.wear append value {id:-9,msg:["穿上铁胸甲"],time:6,start:"minecraft:t_says/scene/start/wear_item",judge:"minecraft:t_says/scene/judging/wear_item"}
data modify storage minecraft:t_says tasks.wear append value {id:-8,msg:["穿上皮革胸甲"],time:6,start:"minecraft:t_says/scene/start/wear_item",judge:"minecraft:t_says/scene/judging/wear_item"}
data modify storage minecraft:t_says tasks.wear append value {id:-7,msg:["穿上锁链胸甲"],time:6,start:"minecraft:t_says/scene/start/wear_item",judge:"minecraft:t_says/scene/judging/wear_item"}
data modify storage minecraft:t_says tasks.wear append value {id:-6,msg:["穿上铜胸甲"],time:6,start:"minecraft:t_says/scene/start/wear_item",judge:"minecraft:t_says/scene/judging/wear_item"}
data modify storage minecraft:t_says tasks.wear append value {id:-5,msg:["穿上钻石胸甲"],time:6,start:"minecraft:t_says/scene/start/wear_item",judge:"minecraft:t_says/scene/judging/wear_item"}
data modify storage minecraft:t_says tasks.wear append value {id:-4,msg:["穿上下界合金胸甲"],time:6,start:"minecraft:t_says/scene/start/wear_item",judge:"minecraft:t_says/scene/judging/wear_item"}

## ---- 穿戴类：头盔（id 40..43）----
data modify storage minecraft:t_says tasks.wear append value {id:40,msg:["戴上金头盔"],time:6,start:"minecraft:t_says/scene/start/wear_item",judge:"minecraft:t_says/scene/judging/wear_helmet"}
data modify storage minecraft:t_says tasks.wear append value {id:41,msg:["戴上铁头盔"],time:6,start:"minecraft:t_says/scene/start/wear_item",judge:"minecraft:t_says/scene/judging/wear_helmet"}
data modify storage minecraft:t_says tasks.wear append value {id:42,msg:["戴上钻石头盔"],time:6,start:"minecraft:t_says/scene/start/wear_item",judge:"minecraft:t_says/scene/judging/wear_helmet"}
data modify storage minecraft:t_says tasks.wear append value {id:43,msg:["戴上下界合金头盔"],time:6,start:"minecraft:t_says/scene/start/wear_item",judge:"minecraft:t_says/scene/judging/wear_helmet"}

## ---- 手持类（id 50..52）----
data modify storage minecraft:t_says tasks.hand append value {id:50,msg:["主手拿着一把木剑"],time:6,start:"minecraft:t_says/scene/start/give_hand",judge:"minecraft:t_says/scene/judging/hold_item"}
data modify storage minecraft:t_says tasks.hand append value {id:51,msg:["主手拿着一把钻石剑"],time:6,start:"minecraft:t_says/scene/start/give_hand",judge:"minecraft:t_says/scene/judging/hold_item"}
data modify storage minecraft:t_says tasks.hand append value {id:52,msg:["副手拿着一面盾牌"],time:6,start:"minecraft:t_says/scene/start/give_hand",judge:"minecraft:t_says/scene/judging/hold_item"}

## ---- 使用类（id 60..67）：响应式判定，看 minecraft.used:<物品> 统计 ----
data modify storage minecraft:t_says tasks.use append value {id:60,msg:["扔出一个鸡蛋"],time:6,start:"minecraft:t_says/scene/start/give_use",judge:"minecraft:t_says/scene/judging/none"}
data modify storage minecraft:t_says tasks.use append value {id:61,msg:["扔出一个雪球"],time:6,start:"minecraft:t_says/scene/start/give_use",judge:"minecraft:t_says/scene/judging/none"}
data modify storage minecraft:t_says tasks.use append value {id:62,msg:["射出一支箭"],time:8,start:"minecraft:t_says/scene/start/give_use",judge:"minecraft:t_says/scene/judging/none"}
data modify storage minecraft:t_says tasks.use append value {id:63,msg:["钓一次鱼"],time:8,start:"minecraft:t_says/scene/start/give_use",judge:"minecraft:t_says/scene/judging/none"}
data modify storage minecraft:t_says tasks.use append value {id:64,msg:["吃掉一个面包"],time:6,start:"minecraft:t_says/scene/start/give_use",judge:"minecraft:t_says/scene/judging/none"}
data modify storage minecraft:t_says tasks.use append value {id:65,msg:["喝掉一瓶药水"],time:6,start:"minecraft:t_says/scene/start/give_use",judge:"minecraft:t_says/scene/judging/none"}
data modify storage minecraft:t_says tasks.use append value {id:66,msg:["放置一个白色羊毛"],time:6,start:"minecraft:t_says/scene/start/give_use",judge:"minecraft:t_says/scene/judging/none"}
data modify storage minecraft:t_says tasks.use append value {id:67,msg:["别扔鸡蛋"],time:6,start:"minecraft:t_says/scene/start/give_use",judge:"minecraft:t_says/scene/judging/none",opts:{timeout:"all"}}

## ---- 方块站位类：混凝土（id -20..-11）----
data modify storage minecraft:t_says tasks.block append value {id:-20,msg:["站在黄色混凝土上"],time:21,start:"minecraft:t_says/scene/start/stand_on_block",judge:"minecraft:t_says/scene/judging/stand_on_block"}
data modify storage minecraft:t_says tasks.block append value {id:-19,msg:["站在红色混凝土上"],time:21,start:"minecraft:t_says/scene/start/stand_on_block",judge:"minecraft:t_says/scene/judging/stand_on_block"}
data modify storage minecraft:t_says tasks.block append value {id:-18,msg:["站在白色混凝土上"],time:21,start:"minecraft:t_says/scene/start/stand_on_block",judge:"minecraft:t_says/scene/judging/stand_on_block"}
data modify storage minecraft:t_says tasks.block append value {id:-17,msg:["站在浅蓝色混凝土上"],time:21,start:"minecraft:t_says/scene/start/stand_on_block",judge:"minecraft:t_says/scene/judging/stand_on_block"}
data modify storage minecraft:t_says tasks.block append value {id:-16,msg:["站在深蓝色混凝土上"],time:21,start:"minecraft:t_says/scene/start/stand_on_block",judge:"minecraft:t_says/scene/judging/stand_on_block"}
data modify storage minecraft:t_says tasks.block append value {id:-15,msg:["站在黄绿色混凝土上"],time:21,start:"minecraft:t_says/scene/start/stand_on_block",judge:"minecraft:t_says/scene/judging/stand_on_block"}
data modify storage minecraft:t_says tasks.block append value {id:-14,msg:["站在深绿色混凝土上"],time:21,start:"minecraft:t_says/scene/start/stand_on_block",judge:"minecraft:t_says/scene/judging/stand_on_block"}
data modify storage minecraft:t_says tasks.block append value {id:-13,msg:["站在黑色混凝土上"],time:21,start:"minecraft:t_says/scene/start/stand_on_block",judge:"minecraft:t_says/scene/judging/stand_on_block"}
data modify storage minecraft:t_says tasks.block append value {id:-12,msg:["站在粉色混凝土上"],time:21,start:"minecraft:t_says/scene/start/stand_on_block",judge:"minecraft:t_says/scene/judging/stand_on_block"}
data modify storage minecraft:t_says tasks.block append value {id:-11,msg:["站在棕色混凝土上"],time:21,start:"minecraft:t_says/scene/start/stand_on_block",judge:"minecraft:t_says/scene/judging/stand_on_block"}

## ---- 方块站位类：其他方块（id 70..77）----
data modify storage minecraft:t_says tasks.block append value {id:70,msg:["站在冰面上"],time:6,start:"minecraft:t_says/scene/start/stand_on_block2",judge:"minecraft:t_says/scene/judging/stand_on_block2"}
data modify storage minecraft:t_says tasks.block append value {id:71,msg:["站在蓝冰上"],time:6,start:"minecraft:t_says/scene/start/stand_on_block2",judge:"minecraft:t_says/scene/judging/stand_on_block2"}
data modify storage minecraft:t_says tasks.block append value {id:72,msg:["站在铁块上"],time:6,start:"minecraft:t_says/scene/start/stand_on_block2",judge:"minecraft:t_says/scene/judging/stand_on_block2"}
data modify storage minecraft:t_says tasks.block append value {id:73,msg:["站在金块上"],time:6,start:"minecraft:t_says/scene/start/stand_on_block2",judge:"minecraft:t_says/scene/judging/stand_on_block2"}
data modify storage minecraft:t_says tasks.block append value {id:74,msg:["站在干草块上"],time:6,start:"minecraft:t_says/scene/start/stand_on_block2",judge:"minecraft:t_says/scene/judging/stand_on_block2"}
data modify storage minecraft:t_says tasks.block append value {id:75,msg:["站在绿宝石块上"],time:6,start:"minecraft:t_says/scene/start/stand_on_block2",judge:"minecraft:t_says/scene/judging/stand_on_block2"}
data modify storage minecraft:t_says tasks.block append value {id:76,msg:["站在岩浆块上"],time:6,start:"minecraft:t_says/scene/start/stand_on_block2",judge:"minecraft:t_says/scene/judging/stand_on_block2"}
data modify storage minecraft:t_says tasks.block append value {id:77,msg:["站在铁砧上"],time:6,start:"minecraft:t_says/scene/start/stand_on_block2",judge:"minecraft:t_says/scene/judging/stand_on_block2"}

## ---- 战斗与距离类（id 80..82）----
data modify storage minecraft:t_says tasks.fight append value {id:80,msg:["被箭雨射中"],time:8,start:"minecraft:t_says/scene/start/none",judge:"minecraft:t_says/scene/judging/arrow_rain"}
data modify storage minecraft:t_says tasks.fight append value {id:81,msg:["击杀一个木乃伊"],time:15,start:"minecraft:t_says/scene/start/fight_zombie",judge:"minecraft:t_says/scene/judging/kill_target"}
data modify storage minecraft:t_says tasks.fight append value {id:82,msg:["远离所有玩家 (4格)"],time:8,start:"minecraft:t_says/scene/start/none",judge:"minecraft:t_says/scene/judging/keep_away"}
