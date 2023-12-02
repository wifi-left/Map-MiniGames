function minecraft:twolf/action/tagselected
execute unless entity @a[tag=wolf.selected] run return 0
execute if entity @a[tag=wolf.selected] run tellraw @a[tag=wolf.acting] ["\u00a7d[!] ",{"selector":"@s"},"\u00a76 想要杀死 ",{"selector":"@a[tag=wolf.selected]"}]

scoreboard players set wolf.tmp board 0
execute as @a[tag=wolf.acting,gamemode=adventure,scores={LRS_CS=1..}] run scoreboard players add wolf.tmp board 1

scoreboard players set wolf.wolfcount board 0
execute as @a[tag=wolf.acting,gamemode=adventure] run scoreboard players add wolf.wolfcount board 1

execute if score wolf.tmp board = wolf.wolfcount board run function minecraft:twolf/control/job/wolf/list_selectors