
data modify storage minecraft:temp compare.pattern set from storage minecraft:temp build_guess.word
data modify storage minecraft:temp compare.text set from entity @s SelectedItem.components."minecraft:written_book_content".pages[0].raw
execute store result score build.success temp run function build_guess/during/player/exam with storage temp compare
execute if score build.success temp matches 1 run function minecraft:build_guess/win
execute if score build.success temp matches 1 run tag @s remove build_guess.guesser
execute if score build.success temp matches 1 run tag @s add build_guess.guesser.win
execute if score build.success temp matches 1 run gamemode spectator @s
execute if score build.success temp matches 1 run return 1

data modify storage minecraft:temp build_guess_text.text set from entity @s SelectedItem.components."minecraft:written_book_content".pages[0].raw

execute store result score length temp run data get storage minecraft:temp build_guess_text.text

execute if score length temp matches 11.. run data modify storage minecraft:temp build_guess_text.text set string storage minecraft:temp build_guess_text.text 0 10
execute if score length temp matches 11.. run tellraw @s ["\u00a7c词数过长，已自动截断为10个字符"]

tellraw @a[team=build_guess] [{text:"",color:white},{"selector":"@s"},"\u00a7b 的猜测是 ",{nbt:"build_guess_text.text",storage:"minecraft:temp",interpret:false}]
tellraw @s ["\u00a7c你猜的不对。"]
execute at @s run playsound entity.player.teleport player @s ~ ~ ~ 1 0 1
clear @s written_book