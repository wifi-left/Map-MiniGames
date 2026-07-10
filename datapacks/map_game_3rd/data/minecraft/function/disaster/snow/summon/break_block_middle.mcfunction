fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace snow_block strict
particle block{block_state:{Name:"snow_block"}} ~ ~ ~ 1 1 1 1 100 normal @a
playsound entity.generic.explode block @a ~ ~ ~ 1 1
kill @s