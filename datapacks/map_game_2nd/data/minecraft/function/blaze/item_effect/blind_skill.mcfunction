advancement revoke @s from blaze/root
execute unless entity @s[team=blaze.team.a] unless entity @s[team=blaze.team.b] run return run tellraw @s ["\u00a7c你不应该能得到这个物品。"]


execute if items entity @s weapon.mainhand air run item replace entity @s weapon.mainhand with paper[item_model='black_harness',item_name=[{text:"鸟目"},{text:" - 长按右键使用 (3s)",color:gray}],consumable={animation:"bow",consume_seconds:3,has_consume_particles:false,sound:"block.note_block.banjo"},custom_data={blaze_skill:"blind_skill",blaze:"job"},use_cooldown={seconds:10,cooldown_group:"blind"}]
execute unless items entity @s weapon.mainhand air if items entity @s weapon.offhand air run item replace entity @s weapon.offhand with paper[item_model='black_harness',item_name=[{text:"鸟目"},{text:" - 长按右键使用 (3s)",color:gray}],consumable={animation:"bow",consume_seconds:3,has_consume_particles:false,sound:"block.note_block.banjo"},custom_data={blaze_skill:"blind_skill",blaze:"job"},use_cooldown={seconds:10,cooldown_group:"blind"}]
execute unless items entity @s weapon.mainhand air unless items entity @s weapon.offhand air run give @s paper[item_model='black_harness',item_name=[{text:"鸟目"},{text:" - 长按右键使用 (3s)",color:gray}],consumable={animation:"bow",consume_seconds:3,has_consume_particles:false,sound:"block.note_block.banjo"},custom_data={blaze_skill:"blind_skill",blaze:"job"},use_cooldown={seconds:10,cooldown_group:"blind"}]

execute at @s run function minecraft:blaze/item_effect/blind