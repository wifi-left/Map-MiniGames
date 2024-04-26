execute if score sur.zommode state matches 0 run team modify play.sur friendlyFire true
execute if score sur.zommode state matches 0 run tellraw @a[team=play.sur] ["\n\u00a7c   PVP 已被启用。\n"]
execute if score sur.zommode state matches 0 run tellraw @a[team=play.sur.zom] ["\n\u00a7c   PVP 已被启用。\n"]
execute if score sur.zommode state matches 1 run tellraw @a[team=play.sur] ["\n\u00a7c   一名玩家已被感染。\n"]
execute if score sur.zommode state matches 1 run tellraw @a[team=play.sur.zom] ["\n\u00a7c   一名玩家已被感染。\n"]
execute if score sur.zommode state matches 1 unless entity @a[team=play.sur.zom] run execute as @a[team=play.sur,limit=1,sort=random] run function surgame:joinzom
execute as @a[team=play.sur] at @s run playsound block.anvil.destroy player @a ~ ~ ~ 10 1 1
schedule clear surgame:enablepvp 