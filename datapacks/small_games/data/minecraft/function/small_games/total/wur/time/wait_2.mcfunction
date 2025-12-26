scoreboard players remove gametotal.time tick 1
execute if score gametotal.time tick matches 0 run return run function minecraft:small_games/total/wur/time/timeout_2

data modify block 321 90 152 front_text.messages[2] set value {"nbt":"total_game_wur.a.name",storage:"minecraft:temp","color":"yellow","bold":true,interpret:true}
data modify block 323 90 152 front_text.messages[2] set value {"nbt":"total_game_wur.b.name",storage:"minecraft:temp","color":"blue","bold":true,interpret:true}

execute as @a[team=play.total] if items entity @s weapon.offhand *[custom_data~{total.sel:a}] run title @s actionbar ["\u00a7e你已选择[",{"nbt":"total_game_wur.a.name",storage:"minecraft:temp","color":"yellow","bold":true,interpret:true},"\u00a7e]",{text:" | ",color:dark_gray},{text:"倒计时：",color:gold},{score:{name:"gametotal.time",objective:tick},color:red},{text:"s",color:red}]
execute as @a[team=play.total] if items entity @s weapon.offhand *[custom_data~{total.sel:b}] run title @s actionbar ["\u00a79你已选择[",{"nbt":"total_game_wur.b.name",storage:"minecraft:temp","color":"blue","bold":true,interpret:true},"\u00a79]",{text:" | ",color:dark_gray},{text:"倒计时：",color:gold},{score:{name:"gametotal.time",objective:tick},color:red},{text:"s",color:red}]
execute as @a[team=play.total] unless items entity @s weapon.offhand *[custom_data~{"game_total":1}] run title @s actionbar [{text:"拿着对应选项的纸按下",color:green},{keybind:"key.swapOffhand",color:gold},{text:"来选择游戏",color:green},{text:" | ",color:dark_gray},{text:"倒计时：",color:yellow},{score:{name:"gametotal.time",objective:tick},color:red},{text:"s",color:red}]
execute as @a[team=play.total] at @s run playsound minecraft:block.note_block.iron_xylophone player @s ~ ~ ~ 0.75 2 0.75
scoreboard players set total.unsel.count tick 0
execute as @a[team=play.total] unless items entity @s weapon.offhand *[custom_data~{"game_total":1}] run scoreboard players add total.unsel.count tick 1

execute if score total.unsel.count tick matches 0 if score gametotal.time tick matches 2.. run scoreboard players set gametotal.time tick 1