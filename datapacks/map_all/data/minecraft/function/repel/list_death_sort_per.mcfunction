# execute as @a[team=play.repel] run tellraw @a[team=play.repel] ["§a ",{"score":{"objective":"number","name":"@s"},"color":"red"},"§e -> ",{"selector":"@s"}]
execute as @a[team=play.repel] if score @s number = repel.list.now temp run tag @s add repel.list.now
execute unless entity @a[tag=repel.list.now] run tellraw @a[team=play.repel] [" ",{"score":{"objective":"temp","name":"repel.list.idx"},"color":"red"},{"text":" -> ",color:yellow},{text:"Unknown (玩家已退出或排名失效)",color:gray}]
execute as @a[tag=repel.list.now] run tellraw @a[team=play.repel] [" ",{"score":{"objective":"temp","name":"repel.list.idx"},"color":"red"},{"text":" -> ",color:yellow},{selector:"@s",color:gold}]
tag @a remove repel.list.now
scoreboard players remove repel.list.now temp 1
scoreboard players add repel.list.idx temp 1
execute if score repel.list.now temp matches 1.. run function minecraft:repel/list_death_sort_per