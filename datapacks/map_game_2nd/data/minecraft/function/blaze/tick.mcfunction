function minecraft:blaze/point_detect
execute if block 54 -24 396 minecraft:lever[powered=false] if block 54 -25 402 minecraft:iron_bars run function minecraft:blaze/during/bg/door_a_open
execute if block 54 -24 396 minecraft:lever[powered=true] unless block 54 -25 402 minecraft:iron_bars run function minecraft:blaze/during/bg/door_a_close
execute if block 75 -25 342 minecraft:lever[powered=false] if block 69 -26 336 minecraft:iron_bars run function minecraft:blaze/during/bg/door_b_open
execute if block 75 -25 342 minecraft:lever[powered=true] unless block 69 -26 336 minecraft:iron_bars run function minecraft:blaze/during/bg/door_b_close

execute in killerworld positioned 61 76 369 as @a[distance=..2,gamemode=adventure] at @s run function minecraft:blaze/during/died

execute if score blaze.state state matches 2..10 run scoreboard players enable @a[team=blaze.team.a] blaze.trigger
execute if score blaze.state state matches 2..10 run scoreboard players enable @a[team=blaze.team.b] blaze.trigger
execute if score blaze.state state matches 2..10 as @a[tag=blaze.player,scores={blaze.trigger=-100..}] run function minecraft:blaze/during/shop/main
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{blaze:true}}}}]
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{blaze:"job"}}}}]