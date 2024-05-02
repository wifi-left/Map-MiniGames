##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tag @r[team=play.live.runner,gamemode=adventure] add live.Killer
tellraw @a[team=play.live.runner] ["\u00a7a[Info] \u00a7bKiller 已经选出！请小心！"]
title @a[tag=live.Killer] title ["\u00a7c你是 Killer"]
title @a[tag=live.Killer] subtitle ["\u00a7e杀死 Runners !"]
execute as @a[team=live.play.runner] at @s run playsound minecraft:entity.dragon_fireball.explode player @s
team join play.live.killer @a[tag=live.Killer]
tag @a[tag=live.Killer] remove live.Killer
title @a[team=play.live.runner] title ["\u00a7b你是 Runner"]
title @a[tag=play.live.runner] subtitle ["\u00a7e快跑！"]

scoreboard players set live.time live.all -20
give @a[team=play.live.killer] minecraft:bow[unbreakable={},custom_name='["§aR§ba§ci§dn §eB§fo§6w"]',lore=['["§aR§ba§ci§dn §eB§fo§6w"]','["§aR§ba§ci§dn §eB§fo§6w"]','["§aR§ba§ci§dn §eB§fo§6w"]'],enchantments={levels:{"minecraft:power":2s}}] 1
