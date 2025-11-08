function minecraft:blaze/reset_point

team modify blaze.team.a prefix [{text:"[燎]",color:gold},' ',{text:"队伍A",color:blue},' ',{text:"|",color:"dark_gray"},' ']
team modify blaze.team.b prefix [{text:"[燎]",color:gold},' ',{text:"队伍B",color:red},' ',{text:"|",color:"dark_gray"},' ']
scoreboard players reset * blaze.coin

execute in killerworld run function minecraft:blaze/start_after_reset
scoreboard players set blaze.score.a board 0
scoreboard players set blaze.score.b board 0