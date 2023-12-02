tag @a remove wolf.selected
execute as @r[tag=wolf.acting,gamemode=adventure,scores={LRS_CS=1..}] run function minecraft:twolf/action/tagselected

scoreboard players set wolf.tmp board 0
execute as @a[tag=wolf.selected,gamemode=adventure] run scoreboard players add wolf.tmp board 1

execute if entity @a[tag=wolf.selected,gamemode=adventure] run tellraw @a[tag=wolf.acting] ["\u00a7c操作超时，随机选择。"]
execute unless entity @a[tag=wolf.selected,gamemode=adventure] run tellraw @a[tag=wolf.acting] ["\u00a7c操作超时，取消操作。"]

function minecraft:twolf/control/job/wolf/kill_selector