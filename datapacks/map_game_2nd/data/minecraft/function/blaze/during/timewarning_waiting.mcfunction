execute if score blaze.time board matches 1.. run title @a[tag=blaze.player] actionbar ["\u00a7e游戏将在",{score:{name:"blaze.time",objective:board},color:red},"\u00a7cs\u00a7e后开始！"]

execute if score blaze.time board matches 1..5 as @a[tag=blaze.player] at @s run playsound ui.button.click player @s ~ ~ ~ 1 2 1
execute if score blaze.time board matches 1..5 run tellraw @a[tag=blaze.player] ["\u00a7e游戏将在",{score:{name:"blaze.time",objective:board},color:red},"\u00a7cs\u00a7e后开始！"]
