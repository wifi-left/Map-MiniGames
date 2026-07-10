team modify blaze.team.b prefix [{text:"[燎]",color:gold},{text:"<警>",color:aqua},' ',{text:"队伍B",color:red},' ',{text:"|",color:"dark_gray"},' ']
team modify blaze.team.a prefix [{text:"[燎]",color:gold},{text:"<匪>",color:dark_red},' ',{text:"队伍A",color:blue},' ',{text:"|",color:"dark_gray"},' ']
function minecraft:blaze/during/tag_blaze_players
tellraw @a[tag=blaze.player] ["\n\u00a76 警、匪队伍已经交换！请确认你的新身份。\n"]
tellraw @a[team=blaze.team.b] ["\u00a76 你的新身份为：\u00a79警\n"]
tellraw @a[team=blaze.team.a] ["\u00a76 你的新身份为：\u00a7c匪\n"]
