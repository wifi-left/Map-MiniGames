tag @e[tag=color.test] add color.Nadd
function minecraft:color/setcolor
execute as @e[tag=color.Nadd] at @s run function color/rancolor
execute as @a[team=play.color] at @s run playsound minecraft:ui.button.click player @s