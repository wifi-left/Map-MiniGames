##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# 木剑，弓，箭*5，皮靴，剪刀，自己颜色的羊毛*64(羊毛只能中间放)
# 钮可以选择，选择后自动进入等待区域
# 弩（装填1），弩（多重射击），石剑，木斧（击退2）
clear @s
give @s wooden_sword[can_break=[{blocks:["white_wool","blue_wool","red_wool"]}],tooltip_display={hidden_components:[can_break,unbreakable]},unbreakable={},lore=["","\u00a77在主手时：","\u00a72 4 攻击伤害","\u00a72 1.6 攻击速度"]]
give @s shears[can_break=[{blocks:["white_wool","blue_wool","red_wool"]}],tooltip_display={hidden_components:[can_break,unbreakable]},unbreakable={}]
give @s[team=play.battle.r] red_wool[can_break=[{blocks:["white_wool","blue_wool","red_wool"]}],tooltip_display={hidden_components:[can_break,can_place_on,unbreakable]},can_place_on=[{blocks:["sea_lantern","white_wool","blue_wool","red_wool"]}],unbreakable={}] 64
give @s[team=play.battle.b] blue_wool[can_break=[{blocks:["white_wool","blue_wool","red_wool"]}],tooltip_display={hidden_components:[can_break,can_place_on,unbreakable]},can_place_on=[{blocks:["sea_lantern","white_wool","blue_wool","red_wool"]}],unbreakable={}] 64
give @s bow[can_break=[{blocks:["white_wool","blue_wool","red_wool"]}],tooltip_display={hidden_components:[can_break,unbreakable]},unbreakable={}]

item replace entity @s armor.feet with leather_boots[can_break=[{blocks:["white_wool","blue_wool","red_wool"]}],tooltip_display={hidden_components:[can_break,unbreakable]},unbreakable={}]


