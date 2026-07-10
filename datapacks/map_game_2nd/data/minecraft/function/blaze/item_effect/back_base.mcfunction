advancement revoke @s from blaze/root
execute unless entity @s[team=blaze.team.a] unless entity @s[team=blaze.team.b] run return run tellraw @s ["\u00a7c你不应该能得到这个物品。"]
execute if score blaze.mode board matches 3 if score blaze.police.state board matches 1 as @s[team=blaze.team.a] run function minecraft:blaze/during/tp/mid
execute if score blaze.mode board matches 3 if score blaze.police.state board matches 2 as @s[team=blaze.team.a] run function minecraft:blaze/during/tp/mid
execute if score blaze.mode board matches 3 unless score blaze.police.state board matches 1 as @s[team=blaze.team.a] run function minecraft:blaze/during/tp/a
execute if score blaze.mode board matches 3 unless score blaze.police.state board matches 2 as @s[team=blaze.team.b] run function minecraft:blaze/during/tp/b

execute unless score blaze.mode board matches 3 as @s[team=blaze.team.a] run function minecraft:blaze/during/tp/a
execute unless score blaze.mode board matches 3 as @s[team=blaze.team.b] run function minecraft:blaze/during/tp/b
tellraw @s ["\u00a7a你已返回基地"]
title @s title ["\u00a7a你已返回基地"]
title @s subtitle ["祝你顺利。"]
execute at @s run playsound entity.player.teleport player @s ~ ~ ~ 1 1 1