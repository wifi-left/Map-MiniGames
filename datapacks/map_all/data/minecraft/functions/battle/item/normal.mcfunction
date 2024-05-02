##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# 木剑，弓，箭*5，皮靴，剪刀，自己颜色的羊毛*64(羊毛只能中间放)
# 钮可以选择，选择后自动进入等待区域
# 弩（装填1），弩（多重射击），石剑，木斧（击退2）
clear @s
give @s wooden_sword[can_break={predicates:[{blocks:["white_wool","blue_wool","red_wool"]}],show_in_tooltip:false},unbreakable={show_in_tooltip:false},lore=['""','"\\u00a77在主手时："','"\\u00a72 4 攻击伤害"','"\\u00a72 1.6 攻击速度"']]
give @s shears[can_break={predicates:[{blocks:["white_wool","blue_wool","red_wool"]}],show_in_tooltip:false},unbreakable={show_in_tooltip:false}]
give @s[team=play.battle.r] red_wool[can_break={predicates:[{blocks:["white_wool","blue_wool","red_wool"]}],show_in_tooltip:false},can_place_on={predicates:[{blocks:["sea_lantern","white_wool","blue_wool","red_wool"]}],show_in_tooltip:false},unbreakable={show_in_tooltip:false}] 64
give @s[team=play.battle.b] blue_wool[can_break={predicates:[{blocks:["white_wool","blue_wool","red_wool"]}],show_in_tooltip:false},can_place_on={predicates:[{blocks:["sea_lantern","white_wool","blue_wool","red_wool"]}],show_in_tooltip:false},unbreakable={show_in_tooltip:false}] 64
give @s bow[can_break={predicates:[{blocks:["white_wool","blue_wool","red_wool"]}],show_in_tooltip:false},unbreakable={show_in_tooltip:false}]

item replace entity @s armor.feet with leather_boots[can_break={predicates:[{blocks:["white_wool","blue_wool","red_wool"]}],show_in_tooltip:false},unbreakable={show_in_tooltip:false}]

