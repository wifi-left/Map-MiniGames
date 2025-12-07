tellraw @s ["\n\u00a7b\u00a7l你的队伍当前的陷阱列表：\n"]
scoreboard players operation bw.traptype.1 bw.board = bw.traptype.1 bw.board
function minecraft:bedwars/message/show_trap/all_per
tellraw @s [{translate:"[%s]",with:[{nbt:"bw.trap.name",storage:"minecraft:temp",color:red}],fallback:"[%s]",color:aqua}]
scoreboard players operation bw.traptype.1 bw.board = bw.traptype.2 bw.board
function minecraft:bedwars/message/show_trap/all_per
tellraw @s [{translate:"[%s]",with:[{nbt:"bw.trap.name",storage:"minecraft:temp",color:red}],fallback:"[%s]",color:aqua}]
scoreboard players operation bw.traptype.1 bw.board = bw.traptype.3 bw.board
function minecraft:bedwars/message/show_trap/all_per
tellraw @s [{translate:"[%s]",with:[{nbt:"bw.trap.name",storage:"minecraft:temp",color:red}],fallback:"[%s]",color:aqua}]
