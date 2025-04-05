tag @s add battle.potion.sel
execute as @a[distance=0..1] run function battle/playergetpotion
tag @s remove battle.potion.sel
particle block{block_state:{Name:redstone_block,Properties:{}}} ~ ~0.5 ~ 0.1 0.1 0.1 1 5 normal
