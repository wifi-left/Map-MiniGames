function minecraft:stronghold/reset/open_tunnel
function minecraft:stronghold/game/reward
bossbar set stronghold value 100
bossbar set stronghold color green
bossbar set stronghold name [{"text":"蚀界行者","color":"#FE4382","bold": true}]
bossbar set stronghold visible false
tag @s remove pve.stronghold.rooms.fighting
tellraw @a[team=stronghold] [{text:"\n    ",color:"dark_gray",bold:false},{text:"关卡完成【",color:green},{nbt:"front_text.messages[0]",color:gold,block:"~6 ~12 ~18",interpret:true},{text:"】",color:"green",bold:false},{text:"\n",color:"dark_gray",bold:false}]

