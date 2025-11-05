execute if score blaze.time board matches 60 run title @a[tag=blaze.player] title ["\u00a7e\u00a7l请注意"]
execute if score blaze.time board matches 60 run title @a[tag=blaze.player] subtitle ["时间还剩下60s！"]
execute if score blaze.time board matches 60 run tellraw @a[tag=blaze.player] ["\u00a7e\u00a7l请注意：\u00a7f时间还剩下60s！"]
execute if score blaze.time board matches 60 as @a[tag=blaze.player] at @s run playsound ui.button.click player @s ~ ~ ~ 1 2 1
execute if score blaze.time board matches 30 run title @a[tag=blaze.player] title ["\u00a7e\u00a7l请注意"]
execute if score blaze.time board matches 30 run title @a[tag=blaze.player] subtitle ["时间还剩下30s！"]
execute if score blaze.time board matches 30 as @a[tag=blaze.player] at @s run playsound ui.button.click player @s ~ ~ ~ 1 2 1
execute if score blaze.time board matches 30 run tellraw @a[tag=blaze.player] ["\u00a7e\u00a7l请注意：\u00a7f时间还剩下30s！"]

execute if score blaze.time board matches 15 run title @a[tag=blaze.player] title ["\u00a7e\u00a7l请注意"]
execute if score blaze.time board matches 15 run title @a[tag=blaze.player] subtitle ["时间还剩下15s！"]
execute if score blaze.time board matches 15 as @a[tag=blaze.player] at @s run playsound ui.button.click player @s ~ ~ ~ 1 2 1
execute if score blaze.time board matches 15 run tellraw @a[tag=blaze.player] ["\u00a7e\u00a7l请注意：\u00a7f时间还剩下15s！"]

execute if score blaze.time board matches 10 run title @a[tag=blaze.player] title ["\u00a7e\u00a7l请注意"]
execute if score blaze.time board matches 10 run title @a[tag=blaze.player] subtitle ["时间还剩下",{score:{name:"blaze.time",objective:board},color:white},"s！"]
execute if score blaze.time board matches 10 as @a[tag=blaze.player] at @s run playsound ui.button.click player @s ~ ~ ~ 1 2 1
execute if score blaze.time board matches 10 run tellraw @a[tag=blaze.player] ["\u00a7e\u00a7l请注意：\u00a7f时间还剩下",{score:{name:"blaze.time",objective:board},color:white},"s！"]

execute if score blaze.time board matches 1..5 run title @a[tag=blaze.player] title ["\u00a7e\u00a7l请注意"]
execute if score blaze.time board matches 1..5 run title @a[tag=blaze.player] subtitle ["时间还剩下",{score:{name:"blaze.time",objective:board},color:white},"s！"]
execute if score blaze.time board matches 1..5 as @a[tag=blaze.player] at @s run playsound ui.button.click player @s ~ ~ ~ 1 2 1
execute if score blaze.time board matches 1..5 run tellraw @a[tag=blaze.player] ["\u00a7e\u00a7l请注意：\u00a7f时间还剩下",{score:{name:"blaze.time",objective:board},color:white},"s！"]
