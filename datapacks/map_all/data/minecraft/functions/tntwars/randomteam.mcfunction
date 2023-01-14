tag @a[tag=tnt.tanteam,sort=random,limit=1] add tnt.ransel
scoreboard players add rand board 1
execute if score rand board matches 3.. run scoreboard players set rand board 1
execute if score rand board matches ..1 run tag @a[tag=tnt.ransel] add tntwars.a
execute if score rand board matches ..1 run tellraw @a[tag=tnt.ransel] ["\u00a76你加入了 \u00a7cTNT Wars \u00a7a「队伍A」"]
execute if score rand board matches 2 run tellraw @a[tag=tnt.ransel] ["\u00a76你加入了 \u00a7cTNT Wars \u00a7b「队伍B」"]
execute if score rand board matches 2.. run tag @a[tag=tnt.ransel] add tntwars.b

tag @a[tag=tnt.ransel] remove tnt.tanteam
tag @a[tag=tnt.ransel] remove tnt.ransel
