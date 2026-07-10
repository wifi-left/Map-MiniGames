advancement revoke @s from blaze/root
execute unless entity @s[team=blaze.team.a] unless entity @s[team=blaze.team.b] run return run tellraw @s ["\u00a7c你不应该能得到这个物品。"]
execute as @s[team=blaze.team.a] at @s run effect give @a[team=blaze.team.b,distance=..10] slowness 10 5 true
execute as @s[team=blaze.team.a] at @s as @a[team=blaze.team.b,distance=..10] run damage @s 5 minecraft:freeze
execute as @s[team=blaze.team.a] at @s as @a[team=blaze.team.b,distance=..10] run tellraw @s ["\u00a7b你被冻住了。"]

execute as @s[team=blaze.team.b] at @s run effect give @a[team=blaze.team.a,distance=..10] slowness 10 5 true
execute as @s[team=blaze.team.b] at @s as @a[team=blaze.team.a,distance=..10] run damage @s 5 minecraft:freeze
execute as @s[team=blaze.team.b] at @s as @a[team=blaze.team.a,distance=..10] run tellraw @s ["\u00a7b你被冻住了。"]

tellraw @s ["\u00a7b冰冻！"]
