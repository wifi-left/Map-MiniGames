
data modify storage minecraft:temp compare.pattern set from storage minecraft:temp build_guess.word
data modify storage minecraft:temp compare.text set from entity @s SelectedItem.components."minecraft:writable_book_content".pages[0].raw
execute store result score build.success temp run function build_guess/during/player/exam with storage temp compare
execute if score build.success temp matches 1 run function minecraft:build_guess/win
execute if score build.success temp matches 1 run tag @s remove build_guess.guesser
execute if score build.success temp matches 1 run tag @s add build_guess.guesser.win
execute if score build.success temp matches 1 run gamemode spectator @s
execute if score build.success temp matches 1 run return 1

tellraw @a[team=build_guess] [{text:"",color:white},{"selector":"@s"},"\u00a7b 的猜测是 ",{nbt:"SelectedItem.components.\"minecraft:writable_book_content\".pages[0].raw",entity:"@s"}]
tellraw @s ["\u00a7c你猜的不对。"]
execute at @s run playsound entity.player.teleport player @s ~ ~ ~ 1 0 1
clear @s writable_book