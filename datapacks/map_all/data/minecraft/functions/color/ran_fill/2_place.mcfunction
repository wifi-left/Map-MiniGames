function color/rancolor
# x-; z+
execute store result score color.tmp board run random value 1..3
execute if score color.tmp board matches 2 if score color.ran.targetcount board matches 1.. run clone -52 35 64 -52 35 64 -52 35 61
execute if score color.tmp board matches 1 if score color.ran.targetcount board matches 1.. run scoreboard players remove color.ran.targetcount board 1
execute if score color.ran.tpx board >= color.ran.tpx.to board if score color.ran.tpy board >= color.ran.tpy.to board if score color.ran.targetcount board matches 1.. run clone -52 35 64 -52 35 64 -52 35 61
execute if score color.ran.blockwidth board matches 1.. as @s at @s run clone -52 35 61 -52 35 61 ~ ~ ~
execute if score color.ran.blockwidth board matches 2.. as @s at @s run clone -52 35 61 -52 35 61 ~ ~ ~1
execute if score color.ran.blockwidth board matches 2.. as @s at @s run clone -52 35 61 -52 35 61 ~-1 ~ ~
execute if score color.ran.blockwidth board matches 2.. as @s at @s run clone -52 35 61 -52 35 61 ~-1 ~ ~1
execute if score color.ran.blockwidth board matches 3.. as @s at @s run clone -52 35 61 -52 35 61 ~-2 ~ ~
execute if score color.ran.blockwidth board matches 3.. as @s at @s run clone -52 35 61 -52 35 61 ~-2 ~ ~1
execute if score color.ran.blockwidth board matches 3.. as @s at @s run clone -52 35 61 -52 35 61 ~-2 ~ ~2
execute if score color.ran.blockwidth board matches 3.. as @s at @s run clone -52 35 61 -52 35 61 ~-1 ~ ~2
execute if score color.ran.blockwidth board matches 3.. as @s at @s run clone -52 35 61 -52 35 61 ~ ~ ~2
execute if score color.ran.blockwidth board matches 4.. as @s at @s run clone -52 35 61 -52 35 61 ~ ~ ~3
execute if score color.ran.blockwidth board matches 4.. as @s at @s run clone -52 35 61 -52 35 61 ~-1 ~ ~3
execute if score color.ran.blockwidth board matches 4.. as @s at @s run clone -52 35 61 -52 35 61 ~-2 ~ ~3
execute if score color.ran.blockwidth board matches 4.. as @s at @s run clone -52 35 61 -52 35 61 ~-3 ~ ~3
execute if score color.ran.blockwidth board matches 4.. as @s at @s run clone -52 35 61 -52 35 61 ~-3 ~ ~
execute if score color.ran.blockwidth board matches 4.. as @s at @s run clone -52 35 61 -52 35 61 ~-3 ~ ~1
execute if score color.ran.blockwidth board matches 4.. as @s at @s run clone -52 35 61 -52 35 61 ~-3 ~ ~2