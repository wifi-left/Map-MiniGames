# 魔法牛奶：喝下后 60 秒免疫敌方陷阱（consumable 触发时物品已经被消耗掉了）
advancement revoke @s only minecraft:bedwars/magic_milk
execute unless entity @s[tag=bw.player] run return 0
execute if entity @s[gamemode=spectator] run return 0
tag @s add bw.milk
scoreboard players set @s bw.milk.t 60
playsound minecraft:entity.generic.drink player @s ~ ~ ~ 1 1
tellraw @s ["§b魔法牛奶生效 §7- §f60 秒内不会触发敌方陷阱"]
