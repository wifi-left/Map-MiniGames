##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set bw.shopmode board 0
execute if score bw.mode state matches 3 run scoreboard players set bw.shopmode board 1
## Diamond Shop


execute as @s store success score @s bw.board run clear @s stone_sword[custom_data~{shop:5}]
execute as @s if score @s bw.board matches 1.. run tag @s add bw.buy.5

execute as @s store success score @s bw.board run clear @s iron_chestplate[custom_data~{shop:6}]
execute as @s if score @s bw.board matches 1.. run tag @s add bw.buy.6

execute as @s store success score @s bw.board run clear @s iron_pickaxe[custom_data~{shop:7}]
execute as @s if score @s bw.board matches 1.. run tag @s add bw.buy.7

execute as @s store success score @s bw.board run clear @s blast_furnace[custom_data~{shop:forge}]
execute as @s if score @s bw.board matches 1.. run tag @s add bw.buy.forge

execute as @s store success score @s bw.board run clear @s diamond_pickaxe[custom_data~{shop:8}]
execute as @s if score @s bw.board matches 1.. run tag @s add bw.buy.8

execute as @s store success score @s bw.board run clear @s potion[custom_data~{shop:114514}]
execute as @s if score @s bw.board matches 1.. run tag @s add bw.buy.114514

execute as @s store success score @s bw.board run clear @s potion[custom_data~{shop:114513}]
execute as @s if score @s bw.board matches 1.. run tag @s add bw.buy.114513





## Item Shop


execute as @s store success score @s bw.board run clear @s golden_apple[custom_data~{shop:9}]
execute as @s if score @s bw.board matches 1.. run tag @s add bw.buy.9


execute as @s store success score @s bw.board run clear @s white_wool[custom_data~{shop:-2}]
execute as @s if score @s bw.board matches 1.. run tag @s add bw.buy.-2


execute as @s store success score @s bw.board run clear @s end_stone[custom_data~{shop:-3}]
execute as @s if score @s bw.board matches 1.. run tag @s add bw.buy.-3


execute as @s store success score @s bw.board run clear @s shears[custom_data~{shop:-4}]
execute as @s if score @s bw.board matches 1.. run tag @s add bw.buy.-4


execute as @s store success score @s bw.board run clear @s ladder[custom_data~{shop:-5}]
execute as @s if score @s bw.board matches 1.. run tag @s add bw.buy.-5


execute as @s store success score @s bw.board run clear @s dark_oak_planks[custom_data~{shop:-6}]
execute as @s if score @s bw.board matches 1.. run tag @s add bw.buy.-6


execute as @s store success score @s bw.board run clear @s obsidian[custom_data~{shop:-7}]
execute as @s if score @s bw.board matches 1.. run tag @s add bw.buy.-7


execute as @s store success score @s bw.board run clear @s chainmail_boots[custom_data~{shop:-10}]
execute as @s if score @s bw.board matches 1.. run tag @s add bw.buy.-10


execute as @s store success score @s bw.board run clear @s iron_boots[custom_data~{shop:-11}]
execute as @s if score @s bw.board matches 1.. run tag @s add bw.buy.-11


execute as @s store success score @s bw.board run clear @s diamond_boots[custom_data~{shop:-12}]
execute as @s if score @s bw.board matches 1.. run tag @s add bw.buy.-12


execute as @s store success score @s bw.board run clear @s wooden_pickaxe[custom_data~{shop:-15}]
execute as @s if score @s bw.board matches 1.. run tag @s add bw.buy.-15


execute as @s store success score @s bw.board run clear @s wooden_axe[custom_data~{shop:-16}]
execute as @s if score @s bw.board matches 1.. run tag @s add bw.buy.-16


execute as @s store success score @s bw.board run clear @s iron_pickaxe[custom_data~{shop:-17}]
execute as @s if score @s bw.board matches 1.. run tag @s add bw.buy.-17


execute as @s store success score @s bw.board run clear @s iron_axe[custom_data~{shop:-18}]
execute as @s if score @s bw.board matches 1.. run tag @s add bw.buy.-18


execute as @s store success score @s bw.board run clear @s diamond_pickaxe[custom_data~{shop:-19}]
execute as @s if score @s bw.board matches 1.. run tag @s add bw.buy.-19


execute as @s store success score @s bw.board run clear @s diamond_axe[custom_data~{shop:-20}]
execute as @s if score @s bw.board matches 1.. run tag @s add bw.buy.-20


execute as @s store success score @s bw.board run clear @s water_bucket[custom_data~{shop:-21}]
execute as @s if score @s bw.board matches 1.. run tag @s add bw.buy.-21


execute as @s store success score @s bw.board run clear @s stick[custom_data~{shop:-22}]
execute as @s if score @s bw.board matches 1.. run tag @s add bw.buy.-22


execute as @s store success score @s bw.board run clear @s egg[custom_data~{shop:-23}]
execute as @s if score @s bw.board matches 1.. run tag @s add bw.buy.-23


execute as @s store success score @s bw.board run clear @s arrow[custom_data~{shop:-24}]
execute as @s if score @s bw.board matches 1.. run tag @s add bw.buy.-24


execute as @s store success score @s bw.board run clear @s stone_sword[custom_data~{shop:-25}]
execute as @s if score @s bw.board matches 1.. run tag @s add bw.buy.-25


execute as @s store success score @s bw.board run clear @s iron_sword[custom_data~{shop:-26}]
execute as @s if score @s bw.board matches 1.. run tag @s add bw.buy.-26


execute as @s store success score @s bw.board run clear @s diamond_sword[custom_data~{shop:-27}]
execute as @s if score @s bw.board matches 1.. run tag @s add bw.buy.-27


execute as @s store success score @s bw.board run clear @s bow[custom_data~{shop:-30}]
execute as @s if score @s bw.board matches 1.. run tag @s add bw.buy.-30


execute as @s store success score @s bw.board run clear @s bow[custom_data~{shop:-31}]
execute as @s if score @s bw.board matches 1.. run tag @s add bw.buy.-31


execute as @s store success score @s bw.board run clear @s potion[custom_data~{shop:-32}]
execute as @s if score @s bw.board matches 1.. run tag @s add bw.buy.-32


execute as @s store success score @s bw.board run clear @s potion[custom_data~{shop:-33}]
execute as @s if score @s bw.board matches 1.. run tag @s add bw.buy.-33


execute as @s store success score @s bw.board run clear @s ender_pearl[custom_data~{shop:-34}]
execute as @s if score @s bw.board matches 1.. run tag @s add bw.buy.-34


execute as @s store success score @s bw.board run clear @s tnt[custom_data~{shop:-35}]
execute as @s if score @s bw.board matches 1.. run tag @s add bw.buy.-35


execute as @s store success score @s bw.board run clear @s wind_charge[custom_data~{shop:-40}]
execute as @s if score @s bw.board matches 1.. run tag @s add bw.buy.-40

#MACE 重锤

execute as @s store success score @s bw.board run clear @s mace[custom_data~{shop:-41}]
execute as @s if score @s bw.board matches 1.. run tag @s add bw.buy.-41

# 海绵

execute as @s store success score @s bw.board run clear @s sponge[custom_data~{shop:-42}]
execute as @s if score @s bw.board matches 1.. run tag @s add bw.buy.-42

# 盾

execute as @s store success score @s bw.board run clear @s shield[custom_data~{shop:-43}]
execute as @s if score @s bw.board matches 1.. run tag @s add bw.buy.-43

# 火焰弹

execute as @s store success score @s bw.board run clear @s blaze_powder[custom_data~{shop:-44}]
execute as @s if score @s bw.board matches 1.. run tag @s add bw.buy.-44
# 回城卷轴

execute as @s store success score @s bw.board run clear @s paper[custom_data~{shop:-45}]
execute as @s if score @s bw.board matches 1.. run tag @s add bw.buy.-45

# 救援平台

execute as @s store success score @s bw.board run clear @s blaze_rod[custom_data~{shop:-46}]
execute as @s if score @s bw.board matches 1.. run tag @s add bw.buy.-46

# 速建防御塔

execute as @s store success score @s bw.board run clear @s zombie_spawn_egg[custom_data~{shop:-47}]
execute as @s if score @s bw.board matches 1.. run tag @s add bw.buy.-47



# 中毒箭

execute as @s store success score @s bw.board run clear @s tipped_arrow[custom_data~{shop:-49}]
execute as @s if score @s bw.board matches 1.. run tag @s add bw.buy.-49

# 无敌卷轴

execute as @s store success score @s bw.board run clear @s paper[custom_data~{shop:-50}]
execute as @s if score @s bw.board matches 1.. run tag @s add bw.buy.-50

# 附魔金苹果

execute as @s store success score @s bw.board run clear @s enchanted_golden_apple[custom_data~{shop:-51}]
execute as @s if score @s bw.board matches 1.. run tag @s add bw.buy.-51

# 铁傀儡守卫

execute as @s store success score @s bw.board run clear @s iron_golem_spawn_egg[custom_data~{shop:-52}]
execute as @s if score @s bw.board matches 1.. run tag @s add bw.buy.-52

# 蠹虫雪球

execute as @s store success score @s bw.board run clear @s snowball[custom_data~{shop:-53}]
execute as @s if score @s bw.board matches 1.. run tag @s add bw.buy.-53

# 魔法牛奶

execute as @s store success score @s bw.board run clear @s potion[custom_data~{shop:-54}]
execute as @s if score @s bw.board matches 1.. run tag @s add bw.buy.-54

# 力量药水 / 抗性提升药水 / 瞬间治疗 II

execute as @s store success score @s bw.board run clear @s potion[custom_data~{shop:-55}]
execute as @s if score @s bw.board matches 1.. run tag @s add bw.buy.-55

execute as @s store success score @s bw.board run clear @s potion[custom_data~{shop:-56}]
execute as @s if score @s bw.board matches 1.. run tag @s add bw.buy.-56

execute as @s store success score @s bw.board run clear @s potion[custom_data~{shop:-57}]
execute as @s if score @s bw.board matches 1.. run tag @s add bw.buy.-57

# 漂浮羽毛

execute as @s store success score @s bw.board run clear @s feather[custom_data~{shop:-58}]
execute as @s if score @s bw.board matches 1.. run tag @s add bw.buy.-58

## Diamond Shop

execute as @s[tag=bw.buy.114513] at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2 1
execute as @s[tag=bw.buy.114513] at @s run function minecraft:bedwars/shop/buy114513
tag @s remove bw.buy.114513

execute as @s[tag=bw.buy.114514] at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2 1
execute as @s[tag=bw.buy.114514] at @s run function minecraft:bedwars/shop/buy114514
tag @s remove bw.buy.114514

execute as @s[tag=bw.buy.5] at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2 1
execute as @s[tag=bw.buy.5] run function minecraft:bedwars/shop/buy5
#/playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2 1
tag @s remove bw.buy.5

execute as @s[tag=bw.buy.6] at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2 1
execute as @s[tag=bw.buy.6] run function minecraft:bedwars/shop/buy6
#/playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2 1
tag @s remove bw.buy.6

execute as @s[tag=bw.buy.7] at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2 1
execute as @s[tag=bw.buy.7] run function minecraft:bedwars/shop/buy7
#/playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2 1
tag @s remove bw.buy.7

execute as @s[tag=bw.buy.forge] at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2 1
execute as @s[tag=bw.buy.forge] run function minecraft:bedwars/shop/buy_forge
tag @s remove bw.buy.forge

execute as @s[tag=bw.buy.8] at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2 1
execute as @s[tag=bw.buy.8] run function minecraft:bedwars/shop/buy8
#/playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2 1
tag @s remove bw.buy.8

## Item Shop


execute as @s[tag=bw.buy.-2] at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2 1
execute if score bw.shopmode board matches 0 as @s[tag=bw.buy.-2] run function minecraft:bedwars/shop/buyf2
execute if score bw.shopmode board matches 1 as @s[tag=bw.buy.-2] run function minecraft:bedwars/shop_xp/buyf2
#/playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2 1
tag @s remove bw.buy.-2

execute as @s[tag=bw.buy.-3] at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2 1
execute if score bw.shopmode board matches 0 as @s[tag=bw.buy.-3] at @s run function minecraft:bedwars/shop/buyf3
execute if score bw.shopmode board matches 1 as @s[tag=bw.buy.-3] at @s run function minecraft:bedwars/shop_xp/buyf3
tag @s remove bw.buy.-3

execute as @s[tag=bw.buy.-4] at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2 1
execute if score bw.shopmode board matches 0 as @s[tag=bw.buy.-4] at @s run function minecraft:bedwars/shop/buyf4
execute if score bw.shopmode board matches 1 as @s[tag=bw.buy.-4] at @s run function minecraft:bedwars/shop_xp/buyf4
tag @s remove bw.buy.-4

execute as @s[tag=bw.buy.-5] at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2 1
execute if score bw.shopmode board matches 0 as @s[tag=bw.buy.-5] at @s run function minecraft:bedwars/shop/buyf5
execute if score bw.shopmode board matches 1 as @s[tag=bw.buy.-5] at @s run function minecraft:bedwars/shop_xp/buyf5
tag @s remove bw.buy.-5

execute as @s[tag=bw.buy.-6] at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2 1
execute if score bw.shopmode board matches 0 as @s[tag=bw.buy.-6] at @s run function minecraft:bedwars/shop/buyf6
execute if score bw.shopmode board matches 1 as @s[tag=bw.buy.-6] at @s run function minecraft:bedwars/shop_xp/buyf6
tag @s remove bw.buy.-6

execute as @s[tag=bw.buy.-7] at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2 1
execute if score bw.shopmode board matches 0 as @s[tag=bw.buy.-7] at @s run function minecraft:bedwars/shop/buyf7
execute if score bw.shopmode board matches 1 as @s[tag=bw.buy.-7] at @s run function minecraft:bedwars/shop_xp/buyf7
tag @s remove bw.buy.-7

execute as @s[tag=bw.buy.-10] at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2 1
execute if score bw.shopmode board matches 0 as @s[tag=bw.buy.-10] at @s run function minecraft:bedwars/shop/buyf10
execute if score bw.shopmode board matches 1 as @s[tag=bw.buy.-10] at @s run function minecraft:bedwars/shop_xp/buyf10
tag @s remove bw.buy.-10

execute as @s[tag=bw.buy.-11] at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2 1
execute if score bw.shopmode board matches 0 as @s[tag=bw.buy.-11] at @s run function minecraft:bedwars/shop/buyf11
execute if score bw.shopmode board matches 1 as @s[tag=bw.buy.-11] at @s run function minecraft:bedwars/shop_xp/buyf11
tag @s remove bw.buy.-11

execute as @s[tag=bw.buy.-12] at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2 1
execute if score bw.shopmode board matches 0 as @s[tag=bw.buy.-12] at @s run function minecraft:bedwars/shop/buyf12
execute if score bw.shopmode board matches 1 as @s[tag=bw.buy.-12] at @s run function minecraft:bedwars/shop_xp/buyf12
tag @s remove bw.buy.-12

execute as @s[tag=bw.buy.-15] at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2 1
execute if score bw.shopmode board matches 0 as @s[tag=bw.buy.-15] at @s run function minecraft:bedwars/shop/buyf15
execute if score bw.shopmode board matches 1 as @s[tag=bw.buy.-15] at @s run function minecraft:bedwars/shop_xp/buyf15
tag @s remove bw.buy.-15

execute as @s[tag=bw.buy.-16] at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2 1
execute if score bw.shopmode board matches 0 as @s[tag=bw.buy.-16] at @s run function minecraft:bedwars/shop/buyf16
execute if score bw.shopmode board matches 1 as @s[tag=bw.buy.-16] at @s run function minecraft:bedwars/shop_xp/buyf16
tag @s remove bw.buy.-16

execute as @s[tag=bw.buy.-17] at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2 1
execute if score bw.shopmode board matches 0 as @s[tag=bw.buy.-17] at @s run function minecraft:bedwars/shop/buyf17
execute if score bw.shopmode board matches 1 as @s[tag=bw.buy.-17] at @s run function minecraft:bedwars/shop_xp/buyf17
tag @s remove bw.buy.-17

execute as @s[tag=bw.buy.-18] at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2 1
execute if score bw.shopmode board matches 0 as @s[tag=bw.buy.-18] at @s run function minecraft:bedwars/shop/buyf18
execute if score bw.shopmode board matches 1 as @s[tag=bw.buy.-18] at @s run function minecraft:bedwars/shop_xp/buyf18
tag @s remove bw.buy.-18

execute as @s[tag=bw.buy.-19] at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2 1
execute if score bw.shopmode board matches 0 as @s[tag=bw.buy.-19] at @s run function minecraft:bedwars/shop/buyf19
execute if score bw.shopmode board matches 1 as @s[tag=bw.buy.-19] at @s run function minecraft:bedwars/shop_xp/buyf19
tag @s remove bw.buy.-19

execute as @s[tag=bw.buy.-20] at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2 1
execute if score bw.shopmode board matches 0 as @s[tag=bw.buy.-20] at @s run function minecraft:bedwars/shop/buyf20
execute if score bw.shopmode board matches 1 as @s[tag=bw.buy.-20] at @s run function minecraft:bedwars/shop_xp/buyf20
tag @s remove bw.buy.-20

execute as @s[tag=bw.buy.-21] at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2 1
execute if score bw.shopmode board matches 0 as @s[tag=bw.buy.-21] at @s run function minecraft:bedwars/shop/buyf21
execute if score bw.shopmode board matches 1 as @s[tag=bw.buy.-21] at @s run function minecraft:bedwars/shop_xp/buyf21
tag @s remove bw.buy.-21

execute as @s[tag=bw.buy.-22] at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2 1
execute if score bw.shopmode board matches 0 as @s[tag=bw.buy.-22] at @s run function minecraft:bedwars/shop/buyf22
execute if score bw.shopmode board matches 1 as @s[tag=bw.buy.-22] at @s run function minecraft:bedwars/shop_xp/buyf22
tag @s remove bw.buy.-22

execute as @s[tag=bw.buy.-23] at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2 1
execute if score bw.shopmode board matches 0 as @s[tag=bw.buy.-23] at @s run function minecraft:bedwars/shop/buyf23
execute if score bw.shopmode board matches 1 as @s[tag=bw.buy.-23] at @s run function minecraft:bedwars/shop_xp/buyf23
tag @s remove bw.buy.-23

execute as @s[tag=bw.buy.-24] at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2 1
execute if score bw.shopmode board matches 0 as @s[tag=bw.buy.-24] at @s run function minecraft:bedwars/shop/buyf24
execute if score bw.shopmode board matches 1 as @s[tag=bw.buy.-24] at @s run function minecraft:bedwars/shop_xp/buyf24
tag @s remove bw.buy.-24

execute as @s[tag=bw.buy.-25] at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2 1
execute if score bw.shopmode board matches 0 as @s[tag=bw.buy.-25] at @s run function minecraft:bedwars/shop/buyf25
execute if score bw.shopmode board matches 1 as @s[tag=bw.buy.-25] at @s run function minecraft:bedwars/shop_xp/buyf25
tag @s remove bw.buy.-25

execute as @s[tag=bw.buy.-26] at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2 1
execute if score bw.shopmode board matches 0 as @s[tag=bw.buy.-26] at @s run function minecraft:bedwars/shop/buyf26
execute if score bw.shopmode board matches 1 as @s[tag=bw.buy.-26] at @s run function minecraft:bedwars/shop_xp/buyf26
tag @s remove bw.buy.-26

execute as @s[tag=bw.buy.-27] at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2 1
execute if score bw.shopmode board matches 0 as @s[tag=bw.buy.-27] at @s run function minecraft:bedwars/shop/buyf27
execute if score bw.shopmode board matches 1 as @s[tag=bw.buy.-27] at @s run function minecraft:bedwars/shop_xp/buyf27
tag @s remove bw.buy.-27

execute as @s[tag=bw.buy.-30] at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2 1
execute if score bw.shopmode board matches 0 as @s[tag=bw.buy.-30] at @s run function minecraft:bedwars/shop/buyf30
execute if score bw.shopmode board matches 1 as @s[tag=bw.buy.-30] at @s run function minecraft:bedwars/shop_xp/buyf30
tag @s remove bw.buy.-30

execute as @s[tag=bw.buy.-31] at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2 1
execute if score bw.shopmode board matches 0 as @s[tag=bw.buy.-31] at @s run function minecraft:bedwars/shop/buyf31
execute if score bw.shopmode board matches 1 as @s[tag=bw.buy.-31] at @s run function minecraft:bedwars/shop_xp/buyf31
tag @s remove bw.buy.-31

execute as @s[tag=bw.buy.-32] at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2 1
execute if score bw.shopmode board matches 0 as @s[tag=bw.buy.-32] at @s run function minecraft:bedwars/shop/buyf32
execute if score bw.shopmode board matches 1 as @s[tag=bw.buy.-32] at @s run function minecraft:bedwars/shop_xp/buyf32
tag @s remove bw.buy.-32

execute as @s[tag=bw.buy.-33] at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2 1
execute if score bw.shopmode board matches 0 as @s[tag=bw.buy.-33] at @s run function minecraft:bedwars/shop/buyf33
execute if score bw.shopmode board matches 1 as @s[tag=bw.buy.-33] at @s run function minecraft:bedwars/shop_xp/buyf33
tag @s remove bw.buy.-33

execute as @s[tag=bw.buy.-34] at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2 1
execute if score bw.shopmode board matches 0 as @s[tag=bw.buy.-34] at @s run function minecraft:bedwars/shop/buyf34
execute if score bw.shopmode board matches 1 as @s[tag=bw.buy.-34] at @s run function minecraft:bedwars/shop_xp/buyf34
tag @s remove bw.buy.-34

execute as @s[tag=bw.buy.-35] at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2 1
execute if score bw.shopmode board matches 0 as @s[tag=bw.buy.-35] at @s run function minecraft:bedwars/shop/buyf35
execute if score bw.shopmode board matches 1 as @s[tag=bw.buy.-35] at @s run function minecraft:bedwars/shop_xp/buyf35
tag @s remove bw.buy.-35

execute as @s[tag=bw.buy.-40] at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2 1
execute if score bw.shopmode board matches 0 as @s[tag=bw.buy.-40] at @s run function minecraft:bedwars/shop/buy40
execute if score bw.shopmode board matches 1 as @s[tag=bw.buy.-40] at @s run function minecraft:bedwars/shop_xp/buy40
tag @s remove bw.buy.-40

#
execute as @s[tag=bw.buy.-41] at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2 1
execute if score bw.shopmode board matches 0 as @s[tag=bw.buy.-41] at @s run function minecraft:bedwars/shop/buy41
execute if score bw.shopmode board matches 1 as @s[tag=bw.buy.-41] at @s run function minecraft:bedwars/shop_xp/buy41
tag @s remove bw.buy.-41

execute as @s[tag=bw.buy.-42] at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2 1
execute if score bw.shopmode board matches 0 as @s[tag=bw.buy.-42] at @s run function minecraft:bedwars/shop/buy42
execute if score bw.shopmode board matches 1 as @s[tag=bw.buy.-42] at @s run function minecraft:bedwars/shop_xp/buy42
tag @s remove bw.buy.-42

execute as @s[tag=bw.buy.-43] at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2 1
execute if score bw.shopmode board matches 0 as @s[tag=bw.buy.-43] at @s run function minecraft:bedwars/shop/buy43
execute if score bw.shopmode board matches 1 as @s[tag=bw.buy.-43] at @s run function minecraft:bedwars/shop_xp/buy43
tag @s remove bw.buy.-43

execute as @s[tag=bw.buy.-44] at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2 1
execute if score bw.shopmode board matches 0 as @s[tag=bw.buy.-44] at @s run function minecraft:bedwars/shop/buy44
execute if score bw.shopmode board matches 1 as @s[tag=bw.buy.-44] at @s run function minecraft:bedwars/shop_xp/buy44
tag @s remove bw.buy.-44

execute as @s[tag=bw.buy.-45] at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2 1
execute if score bw.shopmode board matches 0 as @s[tag=bw.buy.-45] at @s run function minecraft:bedwars/shop/buy45
execute if score bw.shopmode board matches 1 as @s[tag=bw.buy.-45] at @s run function minecraft:bedwars/shop_xp/buy45
tag @s remove bw.buy.-45

execute as @s[tag=bw.buy.-46] at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2 1
execute if score bw.shopmode board matches 0 as @s[tag=bw.buy.-46] at @s run function minecraft:bedwars/shop/buy46
execute if score bw.shopmode board matches 1 as @s[tag=bw.buy.-46] at @s run function minecraft:bedwars/shop_xp/buy46
tag @s remove bw.buy.-46

execute as @s[tag=bw.buy.-47] at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2 1
execute if score bw.shopmode board matches 0 as @s[tag=bw.buy.-47] run function minecraft:bedwars/shop/buy47
execute if score bw.shopmode board matches 1 as @s[tag=bw.buy.-47] run function minecraft:bedwars/shop_xp/buy47
tag @s remove bw.buy.-47



# 中毒箭
execute as @s[tag=bw.buy.-49] at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2 1
execute if score bw.shopmode board matches 0 as @s[tag=bw.buy.-49] run function minecraft:bedwars/shop/buyf49
execute if score bw.shopmode board matches 1 as @s[tag=bw.buy.-49] run function minecraft:bedwars/shop_xp/buyf49
tag @s remove bw.buy.-49

# 无敌卷轴
execute as @s[tag=bw.buy.-50] at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2 1
execute if score bw.shopmode board matches 0 as @s[tag=bw.buy.-50] run function minecraft:bedwars/shop/buyf50
execute if score bw.shopmode board matches 1 as @s[tag=bw.buy.-50] run function minecraft:bedwars/shop_xp/buyf50
tag @s remove bw.buy.-50

# 附魔金苹果
execute as @s[tag=bw.buy.-51] at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2 1
execute if score bw.shopmode board matches 0 as @s[tag=bw.buy.-51] run function minecraft:bedwars/shop/buy51
execute if score bw.shopmode board matches 1 as @s[tag=bw.buy.-51] run function minecraft:bedwars/shop_xp/buy51
tag @s remove bw.buy.-51

# 铁傀儡守卫
execute as @s[tag=bw.buy.-52] at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2 1
execute if score bw.shopmode board matches 0 as @s[tag=bw.buy.-52] run function minecraft:bedwars/shop/buy52
execute if score bw.shopmode board matches 1 as @s[tag=bw.buy.-52] run function minecraft:bedwars/shop_xp/buy52
tag @s remove bw.buy.-52

# 蠹虫雪球
execute as @s[tag=bw.buy.-53] at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2 1
execute if score bw.shopmode board matches 0 as @s[tag=bw.buy.-53] run function minecraft:bedwars/shop/buy53
execute if score bw.shopmode board matches 1 as @s[tag=bw.buy.-53] run function minecraft:bedwars/shop_xp/buy53
tag @s remove bw.buy.-53

# 魔法牛奶
execute as @s[tag=bw.buy.-54] at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2 1
execute if score bw.shopmode board matches 0 as @s[tag=bw.buy.-54] run function minecraft:bedwars/shop/buy54
execute if score bw.shopmode board matches 1 as @s[tag=bw.buy.-54] run function minecraft:bedwars/shop_xp/buy54
tag @s remove bw.buy.-54

# 力量药水
execute as @s[tag=bw.buy.-55] at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2 1
execute if score bw.shopmode board matches 0 as @s[tag=bw.buy.-55] run function minecraft:bedwars/shop/buy55
execute if score bw.shopmode board matches 1 as @s[tag=bw.buy.-55] run function minecraft:bedwars/shop_xp/buy55
tag @s remove bw.buy.-55

# 抗性提升药水
execute as @s[tag=bw.buy.-56] at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2 1
execute if score bw.shopmode board matches 0 as @s[tag=bw.buy.-56] run function minecraft:bedwars/shop/buy56
execute if score bw.shopmode board matches 1 as @s[tag=bw.buy.-56] run function minecraft:bedwars/shop_xp/buy56
tag @s remove bw.buy.-56

# 瞬间治疗 II 药水
execute as @s[tag=bw.buy.-57] at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2 1
execute if score bw.shopmode board matches 0 as @s[tag=bw.buy.-57] run function minecraft:bedwars/shop/buy57
execute if score bw.shopmode board matches 1 as @s[tag=bw.buy.-57] run function minecraft:bedwars/shop_xp/buy57
tag @s remove bw.buy.-57

# 漂浮羽毛
execute as @s[tag=bw.buy.-58] at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2 1
execute if score bw.shopmode board matches 0 as @s[tag=bw.buy.-58] run function minecraft:bedwars/shop/buy58
execute if score bw.shopmode board matches 1 as @s[tag=bw.buy.-58] run function minecraft:bedwars/shop_xp/buy58
tag @s remove bw.buy.-58
#

execute as @s[tag=bw.buy.9] at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2 1
execute if score bw.shopmode board matches 0 as @s[tag=bw.buy.9] at @s run function minecraft:bedwars/shop/buy9
execute if score bw.shopmode board matches 1 as @s[tag=bw.buy.9] at @s run function minecraft:bedwars/shop_xp/buy9
tag @s remove bw.buy.9

execute as @s store success score @s bw.board run clear @s *[custom_data~{shop:-36}]
execute as @s if score @s bw.board matches 1.. run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2 1
execute if score @s bw.board matches 1.. if score bw.shopmode board matches 1 at @s run function minecraft:bedwars/shop_xp/buyf36
execute if score @s bw.board matches 1.. unless score bw.shopmode board matches 1 at @s run function minecraft:bedwars/shop/buyf36

execute as @s store success score @s bw.board run clear @s *[custom_data~{shop:-37}]
execute as @s if score @s bw.board matches 1.. run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2 1
execute if score @s bw.board matches 1.. if score bw.shopmode board matches 1 at @s run function minecraft:bedwars/shop_xp/buyf37
execute if score @s bw.board matches 1.. unless score bw.shopmode board matches 1 at @s run function minecraft:bedwars/shop/buyf37

execute as @s store success score @s bw.board run clear @s *[custom_data~{shop:-38}]
execute as @s if score @s bw.board matches 1.. run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2 1
execute if score @s bw.board matches 1.. if score bw.shopmode board matches 1 at @s run function minecraft:bedwars/shop_xp/buyf38
execute if score @s bw.board matches 1.. unless score bw.shopmode board matches 1 at @s run function minecraft:bedwars/shop/buyf38

execute as @s store success score @s bw.board run clear @s *[custom_data~{shop:-39}]
execute as @s if score @s bw.board matches 1.. run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2 1
execute if score @s bw.board matches 1.. if score bw.shopmode board matches 1 at @s run function minecraft:bedwars/shop_xp/buyf39
execute if score @s bw.board matches 1.. unless score bw.shopmode board matches 1 at @s run function minecraft:bedwars/shop/buyf39

execute as @s store success score @s bw.board run clear @s *[custom_data~{shop:trap_1}]
execute as @s if score @s bw.board matches 1.. run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2 1
execute as @s if score @s bw.board matches 1.. run function minecraft:bedwars/shop/buy_trap_1

execute as @s store success score @s bw.board run clear @s *[custom_data~{shop:trap_2}]
execute as @s if score @s bw.board matches 1.. run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2 1
execute as @s if score @s bw.board matches 1.. run function minecraft:bedwars/shop/buy_trap_2

execute as @s store success score @s bw.board run clear @s *[custom_data~{shop:trap_3}]
execute as @s if score @s bw.board matches 1.. run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2 1
execute as @s if score @s bw.board matches 1.. run function minecraft:bedwars/shop/buy_trap_3

# 治疗池（团队升级）
execute as @s store success score @s bw.board run clear @s *[custom_data~{shop:heal}]
execute as @s if score @s bw.board matches 1.. run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2 1
execute as @s if score @s bw.board matches 1.. run function minecraft:bedwars/shop/buy_heal

# 快速重生（团队升级）
execute as @s store success score @s bw.board run clear @s *[custom_data~{shop:respawn}]
execute as @s if score @s bw.board matches 1.. run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2 1
execute as @s if score @s bw.board matches 1.. run function minecraft:bedwars/shop/buy_respawn

# 警报陷阱（shop:trap_4）
execute as @s store success score @s bw.board run clear @s *[custom_data~{shop:trap_4}]
execute as @s if score @s bw.board matches 1.. run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2 1
execute as @s if score @s bw.board matches 1.. run function minecraft:bedwars/shop/buy_trap_4


execute if score bw.shopmode board matches 1 run function minecraft:bedwars/special/xp_purchase

clear @s *[custom_data~{bwshopitem:1}]

function bedwars/shop/resetshop

scoreboard players reset @s bw.board