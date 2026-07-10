# bw.was_killed
# bw.killed_player


execute as @a[tag=bw.was_killed] at @e[limit=1,tag=bw.bed.yellow] if block ~ ~ ~ yellow_bed run tag @s[team=bw.yellow] add bw.fhing
execute as @a[tag=bw.was_killed] at @e[limit=1,tag=bw.bed.green] if block ~ ~ ~ lime_bed run tag @s[team=bw.green] add bw.fhing
execute as @a[tag=bw.was_killed] at @e[limit=1,tag=bw.bed.blue] if block ~ ~ ~ blue_bed run tag @s[team=bw.blue] add bw.fhing
execute as @a[tag=bw.was_killed] at @e[limit=1,tag=bw.bed.red] if block ~ ~ ~ red_bed run tag @s[team=bw.red] add bw.fhing
execute as @a[tag=bw.was_killed,tag=!bw.fhing] run tag @s remove bw.play
execute as @a[tag=bw.was_killed] run tag @s remove bw.fhing

execute store result score bw.deathmsg.random temp run random value 0..10
execute if score bw.deathmsg.random temp matches 0 as @a[tag=bw.was_killed,tag=!bw.play] run tellraw @a[tag=bw.player] [{"selector":"@s"},"§7被",{"selector":"@a[tag=bw.killed_player]"},"§7杀死了。\u00a7b\u00a7l最终击杀！"]
execute if score bw.deathmsg.random temp matches 0 as @a[tag=bw.was_killed,tag=bw.play] run tellraw @a[tag=bw.player] [{"selector":"@s"},"§7被",{"selector":"@a[tag=bw.killed_player]"},"§7杀死了。"]

execute if score bw.deathmsg.random temp matches 1 as @a[tag=bw.was_killed,tag=!bw.play] run tellraw @a[tag=bw.player] [{"selector":"@s"},"§7被",{"selector":"@a[tag=bw.killed_player]"},"§7压成了肉酱。\u00a7b\u00a7l最终击杀！"]
execute if score bw.deathmsg.random temp matches 1 as @a[tag=bw.was_killed,tag=bw.play] run tellraw @a[tag=bw.player] [{"selector":"@s"},"§7被",{"selector":"@a[tag=bw.killed_player]"},"§7压成了肉酱。"]

execute if score bw.deathmsg.random temp matches 2 as @a[tag=bw.was_killed,tag=!bw.play] run tellraw @a[tag=bw.player] [{"selector":"@s"},"§7因为",{"selector":"@a[tag=bw.killed_player]"},"§7的热情而丧失了自己的生命。\u00a7b\u00a7l最终击杀！"]
execute if score bw.deathmsg.random temp matches 2 as @a[tag=bw.was_killed,tag=bw.play] run tellraw @a[tag=bw.player] [{"selector":"@s"},"§7因为",{"selector":"@a[tag=bw.killed_player]"},"§7的热情而丧失了自己的生命。"]

execute if score bw.deathmsg.random temp matches 3 as @a[tag=bw.was_killed,tag=!bw.play] run tellraw @a[tag=bw.player] [{"selector":"@s"},"§7死于",{"selector":"@a[tag=bw.killed_player]"},"§7的威胁。\u00a7b\u00a7l最终击杀！"]
execute if score bw.deathmsg.random temp matches 3 as @a[tag=bw.was_killed,tag=bw.play] run tellraw @a[tag=bw.player] [{"selector":"@s"},"§7死于",{"selector":"@a[tag=bw.killed_player]"},"§7的威胁。"]

execute if score bw.deathmsg.random temp matches 4 as @a[tag=bw.was_killed,tag=!bw.play] run tellraw @a[tag=bw.player] [{"selector":"@s"},"§7无可救药的爱上了",{"selector":"@a[tag=bw.killed_player]"},"§7，心甘情愿地为他去世了。\u00a7b\u00a7l最终击杀！"]
execute if score bw.deathmsg.random temp matches 4 as @a[tag=bw.was_killed,tag=bw.play] run tellraw @a[tag=bw.player] [{"selector":"@s"},"§7无可救药的爱上了",{"selector":"@a[tag=bw.killed_player]"},"§7，心甘情愿地为他去世了。"]

execute if score bw.deathmsg.random temp matches 5 as @a[tag=bw.was_killed,tag=!bw.play] run tellraw @a[tag=bw.player] [{"selector":"@s"},"§7与",{"selector":"@a[tag=bw.killed_player]"},"§7热舞，被激情冲昏了头脑。\u00a7b\u00a7l最终击杀！"]
execute if score bw.deathmsg.random temp matches 5 as @a[tag=bw.was_killed,tag=bw.play] run tellraw @a[tag=bw.player] [{"selector":"@s"},"§7与",{"selector":"@a[tag=bw.killed_player]"},"§7热舞，被激情冲昏了头脑。"]

execute if score bw.deathmsg.random temp matches 6 as @a[tag=bw.was_killed,tag=!bw.play] run tellraw @a[tag=bw.player] [{"selector":"@s"},"§7因为",{"selector":"@a[tag=bw.killed_player]"},"§7的猛攻而不得不投降。\u00a7b\u00a7l最终击杀！"]
execute if score bw.deathmsg.random temp matches 6 as @a[tag=bw.was_killed,tag=bw.play] run tellraw @a[tag=bw.player] [{"selector":"@s"},"§7因为",{"selector":"@a[tag=bw.killed_player]"},"§7的猛攻而不得不投降。"]

execute if score bw.deathmsg.random temp matches 7 as @a[tag=bw.was_killed,tag=!bw.play] run tellraw @a[tag=bw.player] [{"selector":"@s"},"§7受到了",{"selector":"@a[tag=bw.killed_player]"},"§7的重击。\u00a7b\u00a7l最终击杀！"]
execute if score bw.deathmsg.random temp matches 7 as @a[tag=bw.was_killed,tag=bw.play] run tellraw @a[tag=bw.player] [{"selector":"@s"},"§7受到了",{"selector":"@a[tag=bw.killed_player]"},"§7的重击。"]

execute if score bw.deathmsg.random temp matches 8 as @a[tag=bw.was_killed,tag=!bw.play] run tellraw @a[tag=bw.player] [{"selector":"@s"},"§7想要与",{"selector":"@a[tag=bw.killed_player]"},"§7一起学数学题，却被琪露诺1、2、⑨的问题给晕昏了头脑。\u00a7b\u00a7l最终击杀！"]
execute if score bw.deathmsg.random temp matches 8 as @a[tag=bw.was_killed,tag=bw.play] run tellraw @a[tag=bw.player] [{"selector":"@s"},"§7想要与",{"selector":"@a[tag=bw.killed_player]"},"§7一起学数学题，却被琪露诺1、2、⑨的问题给晕昏了头脑。"]

execute if score bw.deathmsg.random temp matches 9 as @a[tag=bw.was_killed,tag=!bw.play] run tellraw @a[tag=bw.player] [{"selector":"@s"},"§7被",{"selector":"@a[tag=bw.killed_player]"},"§7的鸡汤给毒死了。\u00a7b\u00a7l最终击杀！"]
execute if score bw.deathmsg.random temp matches 9 as @a[tag=bw.was_killed,tag=bw.play] run tellraw @a[tag=bw.player] [{"selector":"@s"},"§7被",{"selector":"@a[tag=bw.killed_player]"},"§7的鸡汤给毒死了。"]

execute if score bw.deathmsg.random temp matches 10 as @a[tag=bw.was_killed,tag=!bw.play] run tellraw @a[tag=bw.player] [{"selector":"@s"},"§7被",{"selector":"@a[tag=bw.killed_player]"},"§7送去与周公玩耍了。\u00a7b\u00a7l最终击杀！"]
execute if score bw.deathmsg.random temp matches 10 as @a[tag=bw.was_killed,tag=bw.play] run tellraw @a[tag=bw.player] [{"selector":"@s"},"§7被",{"selector":"@a[tag=bw.killed_player]"},"§7送去与周公玩耍了。"]

execute as @a[tag=bw.was_killed] at @s run function minecraft:bedwars/during/player/loot

tag @a[tag=bw.was_killed] remove bw.was_killed
tag @a[tag=bw.killed_player] remove bw.killed_player
tag @a[tag=bw.died_because_out_of_world] remove bw.died_because_out_of_world