tellraw @s ["\u00a76你找到了一个彩蛋。 \u00a7e彩蛋 +1"]
give @s sunflower[max_stack_size=99,rarity=epic,item_name="彩蛋",custom_data={finder:coin},!consumable,!food,item_model=egg] 1
title @a[team=finder] actionbar [{text:""},{selector:"@s"}," \u00a76找到了一个彩蛋！",["\u00a78 | \u00a7e距离\u00a76游戏结束\u00a7e还有 ",{score:{name:"finder.time",objective:"tick"},color:aqua},"\u00a7bs"]]
execute at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 1 1
xp add @s 1 levels