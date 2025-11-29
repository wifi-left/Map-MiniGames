scoreboard players remove pillar.time tick 1
execute if score pillar.remove.now board matches -1..36 if score pillar.remove.time tick matches 1.. run scoreboard players remove pillar.remove.time tick 1
execute if score pillar.remove.now board matches -1..36 if score pillar.remove.time tick matches 0 run return run function minecraft:pillar/step/timeout/remove_round
execute if score pillar.time tick matches 0 run return run function minecraft:pillar/step/timeout/timeout
execute unless score pillar.remove.now board matches -1..36 run title @a[team=pillar] actionbar ["\u00a7e距离\u00a76游戏结束\u00a7e还有 ",{score:{name:"pillar.time",objective:"tick"},color:aqua},"\u00a7bs \u00a78| ","\u00a7c缩圈已结束"]
execute if score pillar.remove.now board matches -1..36 run title @a[team=pillar] actionbar ["\u00a7e距离\u00a76游戏结束\u00a7e还有 ",{score:{name:"pillar.time",objective:"tick"},color:aqua},"\u00a7bs \u00a78| ","\u00a7e距离\u00a7c下一次缩圈\u00a7e还有 ",{score:{name:"pillar.remove.time",objective:"tick"},color:aqua},"\u00a7bs"]
execute if score pillar.remove.time tick matches 10 run tellraw @a[team=pillar] ["\u00a7e距离\u00a7c下一次缩圈\u00a7e还有 \u00a7c10s\u00a7e，请小心！"]
execute if score pillar.remove.time tick matches 10 as @a[team=pillar] at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 2 1
execute if score pillar.time tick matches 10 run tellraw @a[team=pillar] ["\u00a7e距离\u00a76游戏结束\u00a7e还有 \u00a7c10s\u00a7e。"]
execute if score pillar.time tick matches 10 as @a[team=pillar] at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 2 1