##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
function color/rancolor

execute if score color.ran.blockwidth board matches 1.. run clone -52 35 61 -52 35 61 ~ ~ ~
execute if score color.ran.blockwidth board matches 2.. run clone -52 35 61 -52 35 61 ~ ~ ~1
execute if score color.ran.blockwidth board matches 2.. run clone -52 35 61 -52 35 61 ~-1 ~ ~
execute if score color.ran.blockwidth board matches 2.. run clone -52 35 61 -52 35 61 ~-1 ~ ~1
execute if score color.ran.blockwidth board matches 3.. run clone -52 35 61 -52 35 61 ~-2 ~ ~
execute if score color.ran.blockwidth board matches 3.. run clone -52 35 61 -52 35 61 ~-2 ~ ~1
execute if score color.ran.blockwidth board matches 3.. run clone -52 35 61 -52 35 61 ~-2 ~ ~2
execute if score color.ran.blockwidth board matches 3.. run clone -52 35 61 -52 35 61 ~-1 ~ ~2
execute if score color.ran.blockwidth board matches 3.. run clone -52 35 61 -52 35 61 ~ ~ ~2
execute if score color.ran.blockwidth board matches 4.. run clone -52 35 61 -52 35 61 ~ ~ ~3
execute if score color.ran.blockwidth board matches 4.. run clone -52 35 61 -52 35 61 ~-1 ~ ~3
execute if score color.ran.blockwidth board matches 4.. run clone -52 35 61 -52 35 61 ~-2 ~ ~3
execute if score color.ran.blockwidth board matches 4.. run clone -52 35 61 -52 35 61 ~-3 ~ ~3
execute if score color.ran.blockwidth board matches 4.. run clone -52 35 61 -52 35 61 ~-3 ~ ~
execute if score color.ran.blockwidth board matches 4.. run clone -52 35 61 -52 35 61 ~-3 ~ ~1
execute if score color.ran.blockwidth board matches 4.. run clone -52 35 61 -52 35 61 ~-3 ~ ~2
