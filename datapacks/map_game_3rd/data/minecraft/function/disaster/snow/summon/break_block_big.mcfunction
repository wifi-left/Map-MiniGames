fill ~-1 ~-2 ~-1 ~1 ~1.5 ~1 air replace snow_block strict
particle block{block_state:{Name:"snow_block"}} ~ ~ ~ 2 2 2 1 100 normal @a
playsound entity.generic.explode block @a ~ ~ ~ 1 0
kill @s