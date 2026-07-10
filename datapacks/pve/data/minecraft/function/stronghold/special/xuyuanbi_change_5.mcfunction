# 1000
execute at @s run playsound ui.button.click player @s ~ ~ ~ 1 1 1
execute store result score stronghold.tmp board run clear @s gold_ingot 0
execute if score stronghold.tmp board matches ..999 run title @s actionbar ["\u00a7c金币不足"]
execute if score stronghold.tmp board matches ..999 run return 0
clear @s gold_ingot 1000
give @s heart_of_the_sea[custom_data={stronghold:"xuyuanbi"},item_name={text:"许愿币",color:yellow},lore=[{text:"许愿币无法带入下一层",color:red}],max_stack_size=1]
title @s actionbar ["\u00a7a兑换成功！"]