execute as @e[type=marker,tag=park] at @s run data merge entity @s {Duration:2147483647,Invulnerable:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Radius:0f}
spawnpoint @a[team=lobby,tag=parkouring] 61 19 -51 -90
effect give @a[team=lobby,tag=parkouring] resistance 5 25 true

item replace entity @a[team=lobby,tag=parkouring,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{park:1}}]}] hotbar.4 with carrot_on_a_stick{Unbreakable:1b,Enchantments:[{id:"unbreaking",lvl:1}],display:{Name:'"\\u00a7aCheckpoint \\u00a77(Right click)"',Lore:['"\\u00a7bReturn to parkour checkpoint"']},park:1}