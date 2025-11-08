advancement revoke @s from blaze/root
execute unless entity @s[team=blaze.team.a] unless entity @s[team=blaze.team.b] run return run tellraw @s ["\u00a7c你不应该能得到这个物品。"]
execute if items entity @s weapon.mainhand air run item replace entity @s weapon.mainhand with paper[item_model='tripwire_hook',item_name=[{text:"歌唱"},{text:" - 长按右键 (10s)",color:gray}],consumable={animation:"block",consume_seconds:10,has_consume_particles:false,sound:"entity.parrot.ambient"},custom_data={blaze_skill:"singing_skill",blaze:"job"}]
execute unless items entity @s weapon.mainhand air if items entity @s weapon.offhand air run item replace entity @s weapon.offhand with paper[item_model='tripwire_hook',item_name=[{text:"歌唱"},{text:" - 长按右键 (10s)",color:gray}],consumable={animation:"block",consume_seconds:10,has_consume_particles:false,sound:"entity.parrot.ambient"},custom_data={blaze_skill:"singing_skill",blaze:"job"}]
execute unless items entity @s weapon.mainhand air unless items entity @s weapon.offhand air run give @s paper[item_model='tripwire_hook',item_name=[{text:"歌唱"},{text:" - 长按右键 (10s)",color:gray}],consumable={animation:"block",consume_seconds:10,has_consume_particles:false,sound:"entity.parrot.ambient"},custom_data={blaze_skill:"singing_skill",blaze:"job"}]

execute as @s[team=blaze.team.a] at @s run effect give @a[team=blaze.team.a,distance=..10] strength 5 0 true
execute as @s[team=blaze.team.a] at @s run effect give @a[team=blaze.team.a,distance=..10] speed 5 0 true
execute as @s[team=blaze.team.a] at @s run effect give @a[team=blaze.team.a,distance=..10] jump_boost 5 2 true

execute as @s[team=blaze.team.b] at @s run effect give @a[team=blaze.team.b,distance=..10] strength 5 0 true
execute as @s[team=blaze.team.b] at @s run effect give @a[team=blaze.team.b,distance=..10] speed 5 0 true
execute as @s[team=blaze.team.b] at @s run effect give @a[team=blaze.team.b,distance=..10] jump_boost 5 2 true

tellraw @s ["\u00a7a一首歌曲结束了。增益激活。"]