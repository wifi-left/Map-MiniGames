scoreboard players set repel.list.idx temp 1
scoreboard players set repel.list.now temp 1
scoreboard players set repel.list.max temp 0
execute as @a[team=play.repel] run scoreboard players operation repel.list.max temp > @s number
scoreboard players operation repel.list.now temp = repel.list.max temp
function minecraft:repel/list_death_sort_per