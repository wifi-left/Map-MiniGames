advancement revoke @s from blaze/root
execute unless entity @s[team=blaze.team.a] unless entity @s[team=blaze.team.b] run return run tellraw @s ["\u00a7c你不应该能得到这个物品。"]
execute as @s[team=blaze.team.a] at @s run effect give @a[team=blaze.team.b,distance=..10] blindness 8 1 true
execute as @s[team=blaze.team.a] at @s run effect give @a[team=blaze.team.b,distance=..10] darkness 8 1 true
execute as @s[team=blaze.team.a] at @s run tellraw @a[team=blaze.team.b,distance=..10] ["\u00a7c你收到了",{text:"some_one",obfuscated:true,color:red},"\u00a7c的影响。"]

execute as @s[team=blaze.team.b] at @s run effect give @a[team=blaze.team.a,distance=..10] blindness 8 1 true
execute as @s[team=blaze.team.b] at @s run effect give @a[team=blaze.team.a,distance=..10] darkness 8 1 true
execute as @s[team=blaze.team.b] at @s run tellraw @a[team=blaze.team.a,distance=..10] ["\u00a7c你收到了",{text:"some_one",obfuscated:true,color:red},"\u00a7c的影响。"]

tellraw @s ["\u00a7c鸟目激活！"]
