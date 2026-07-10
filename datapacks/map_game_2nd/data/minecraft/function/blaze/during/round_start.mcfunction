scoreboard players set blaze.state state 2

execute as @a[team=blaze.team.a] in killerworld run function minecraft:blaze/during/tp/a
execute as @a[team=blaze.team.b] in killerworld run function minecraft:blaze/during/tp/b

function minecraft:blaze/during/time_reset
execute as @a[tag=blaze.player] at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 2 1
title @a[tag=blaze.player] title ["\u00a7a下一局开始"]
title @a[tag=blaze.player] subtitle ["开始你的战斗吧！"]

execute if score blaze.mode board matches 3 if score blaze.police.state board matches 1 as @a[team=blaze.team.a] run function minecraft:blaze/during/tp/mid
execute if score blaze.mode board matches 3 if score blaze.police.state board matches 1 as @a[team=blaze.team.b] run function minecraft:blaze/during/tp/b

execute if score blaze.mode board matches 3 if score blaze.police.state board matches 2 as @a[team=blaze.team.a] run function minecraft:blaze/during/tp/a
execute if score blaze.mode board matches 3 if score blaze.police.state board matches 2 as @a[team=blaze.team.b] run function minecraft:blaze/during/tp/mid

execute as @a[tag=blaze.player,scores={blaze.trigger=-100..-2}] run function minecraft:blaze/during/job/main

execute if score blaze.mode board matches 1 as @a[team=blaze.team.a] at @s run function minecraft:blaze/item/glass_pickaxe
execute if score blaze.mode board matches 1 as @a[team=blaze.team.b] at @s run function minecraft:blaze/item/glass_pickaxe
execute if score blaze.mode board matches 3 as @a[team=blaze.team.a] at @s run function minecraft:blaze/item/glass_pickaxe
execute if score blaze.mode board matches 3 as @a[team=blaze.team.b] at @s run function minecraft:blaze/item/glass_pickaxe