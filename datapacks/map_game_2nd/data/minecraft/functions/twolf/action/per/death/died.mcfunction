tag @s add wolf.sell
execute as @e[tag=wolf.used] if score @s LRS_UUID = @a[tag=wolf.sell,limit=1] park.uuid run tag @s add wolf.tp.sell
execute as @e[tag=wolf.tp.sell,limit=1] at @s run data merge entity @e[tag=wolf.nametags,distance=0..2,limit=1] {text:'["\\u00a7e※ ",{"selector":"@a[tag=wolf.sell]"},"\\u00a7c (已阵亡)"]'}

tag @e[tag=wolf.tp.sell] add wolf.died
tag @e[tag=wolf.tp.sell] remove wolf.tp.sell
gamemode spectator
tellraw @s ["\u00a7c你死了\n\u00a7b你已进入等待队列。为保证游戏体验，请使用 \u00a76/tm <消息>\u00a7b 在旁观玩家中交流"]
team join wait.wolfpeople
# tellraw @s ["\u00a7c你死了"]
# execute at @s run tp @s ~ -20 ~
tag @s remove wolf.sell