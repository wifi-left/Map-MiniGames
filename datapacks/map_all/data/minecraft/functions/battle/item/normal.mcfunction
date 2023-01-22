# 木剑，弓，箭*5，皮靴，剪刀，自己颜色的羊毛*64(羊毛只能中间放)
# 钮可以选择，选择后自动进入等待区域
# 弩（装填1），弩（多重射击），石剑，木斧（击退2）
clear @s
give @s wooden_sword{CanDestroy:["white_wool","blue_wool","red_wool"],Unbreakable:1b,HideFlags:63,display:{Lore:['""','"\\u00a77在主手时："','"\\u00a72 4 攻击伤害"','"\\u00a72 1.6 攻击速度"']}}
give @s shears{CanDestroy:["white_wool","blue_wool","red_wool"],Unbreakable:1b,HideFlags:63}
give @s[team=play.battle.r] red_wool{CanDestroy:["white_wool","blue_wool","red_wool"],CanPlaceOn:["sea_lantern","white_wool","blue_wool","red_wool"],Unbreakable:1b,HideFlags:63} 64
give @s[team=play.battle.b] blue_wool{CanDestroy:["white_wool","blue_wool","red_wool"],CanPlaceOn:["sea_lantern","white_wool","blue_wool","red_wool"],Unbreakable:1b,HideFlags:63} 64
give @s bow{CanDestroy:["white_wool","blue_wool","red_wool"],Unbreakable:1b,HideFlags:63}

item replace entity @s armor.feet with leather_boots{CanDestroy:["white_wool","blue_wool","red_wool"],Unbreakable:1b,HideFlags:63}
