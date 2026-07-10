particle explosion ~ ~ ~ 1 1 1 1 5 normal
playsound entity.generic.explode block @a[distance=..15] ~ ~ ~ 1 1 0
fill ~-1 ~-0.3 ~-1 ~1 ~0.3 ~1 air replace #snowmineable
summon creeper ~ ~ ~ {DeathLootTable:"empty",Fuse:0s,Invulnerable:true,ignited:true,ExplosionRadius:2}