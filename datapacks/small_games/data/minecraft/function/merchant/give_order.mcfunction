scoreboard players add desk.merchant.order order 1
tag @r[team=deskgame,gamemode=adventure,scores={order=-1}] add desk.sel
scoreboard players operation @a[tag=desk.sel] order = desk.merchant.order order
tag @a[tag=desk.sel] remove desk.sel