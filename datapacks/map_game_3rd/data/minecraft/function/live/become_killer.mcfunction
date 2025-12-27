team join live.killer @s
tellraw @s ["\n\u00a7e\u00a7l你已成为追杀者。\n\u00a7a你目前的目标：追杀逃跑者，阻止他们得分！\n"]
tag @s remove live.nokiller
tellraw @a[team=live] ["",{selector:"@s"},{text:" 成为了追杀游戏杀手，请小心！",color:yellow},""]
tp @s 217 -61 234 45 0
execute at @s run playsound entity.generic.explode player @s ~ ~ ~ 1 1 1
clear @s *[custom_data~{live.equipment:1}]
function minecraft:live/items/killer
give @s potion[custom_name='\u00a7f速度I (10s)',potion_contents={custom_color:56831,custom_effects:[{id:"speed",amplifier:0,duration:200}]},unbreakable={},custom_data={live.equipment:1}]
give @s potion[custom_name='\u00a7f跳跃III (10s)',potion_contents={custom_color:130843,custom_effects:[{id:"jump_boost",amplifier:2,duration:200}]},unbreakable={},custom_data={live.equipment:1}]