##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
spreadplayers 502 318 0 32 false @s
# execute at @s run tp @s ~ ~ ~5
execute as @s[tag=tnt.tntrain.tnt] at @s run summon tnt ~ ~-3 ~ {fuse:50,Motion:[0.0,-0.8,0.0],Tags:["tntwars.tnt"]}
execute as @s[tag=tnt.tntrain.creeper] at @s run summon creeper ~ ~-3 ~ {fuse:30,ignited:true,Motion:[0.0,-0.5,0.0],Tags:["tntwars.tnt"],DeathLootTable:"",Invulnerable:1}
execute as @s[tag=tnt.tntrain.fireball] at @s run summon fireball ~ ~-3 ~ {acceleration_power:0.4d,Motion:[0.0,-0.3,0.0],Tags:["tntwars.tnt"],ExplosionPower:4}


