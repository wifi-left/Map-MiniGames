##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
effect give @a[tag=bw.speed] speed 2 0 true
effect give @a[tag=bw.jump] jump_boost 2 1 true
execute if score bw.haste.green board matches 1 run effect give @a[team=bw.green] haste 2 0 true
execute if score bw.haste.green board matches 2 run effect give @a[team=bw.green] haste 2 1 true

execute if score bw.haste.red board matches 1 run effect give @a[team=bw.red] haste 2 0 true
execute if score bw.haste.red board matches 2 run effect give @a[team=bw.red] haste 2 1 true

execute if score bw.haste.yellow board matches 1 run effect give @a[team=bw.yellow] haste 2 0 true
execute if score bw.haste.yellow board matches 2 run effect give @a[team=bw.yellow] haste 2 1 true

execute if score bw.haste.blue board matches 1 run effect give @a[team=bw.blue] haste 2 0 true
execute if score bw.haste.blue board matches 2 run effect give @a[team=bw.blue] haste 2 1 true

## 治疗池：基地范围内己方玩家持续回血
execute if score bw.heal.green board matches 1 at @e[tag=bw.bed.green,limit=1] as @a[distance=..12,team=bw.green,tag=bw.play] run effect give @s regeneration 2 0 true
execute if score bw.heal.green board matches 2 at @e[tag=bw.bed.green,limit=1] as @a[distance=..16,team=bw.green,tag=bw.play] run effect give @s regeneration 2 1 true
execute if score bw.heal.red board matches 1 at @e[tag=bw.bed.red,limit=1] as @a[distance=..12,team=bw.red,tag=bw.play] run effect give @s regeneration 2 0 true
execute if score bw.heal.red board matches 2 at @e[tag=bw.bed.red,limit=1] as @a[distance=..16,team=bw.red,tag=bw.play] run effect give @s regeneration 2 1 true
execute if score bw.heal.blue board matches 1 at @e[tag=bw.bed.blue,limit=1] as @a[distance=..12,team=bw.blue,tag=bw.play] run effect give @s regeneration 2 0 true
execute if score bw.heal.blue board matches 2 at @e[tag=bw.bed.blue,limit=1] as @a[distance=..16,team=bw.blue,tag=bw.play] run effect give @s regeneration 2 1 true
execute if score bw.heal.yellow board matches 1 at @e[tag=bw.bed.yellow,limit=1] as @a[distance=..12,team=bw.yellow,tag=bw.play] run effect give @s regeneration 2 0 true
execute if score bw.heal.yellow board matches 2 at @e[tag=bw.bed.yellow,limit=1] as @a[distance=..16,team=bw.yellow,tag=bw.play] run effect give @s regeneration 2 1 true
