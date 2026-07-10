tellraw @a[team=boom] ["\n\u00a7c    幽匿尖啸体已被触发，本次拆弹失败！\n"]
function minecraft:bomb/round/reset
execute as @a[team=boom] at @s run playsound entity.generic.explode player @s ~ ~ ~ 1 1 1