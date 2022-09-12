scoreboard players add zombie.round board 1
tellraw @a[team=play.zombie] ["\n   \u00a7a这是第 ",{"score":{"name": "zombie.round","objective": "board"},"color":"yellow"},"\u00a7e 轮\u00a7a进攻。\n\u00a7b   僵尸现在已经生成！\n"]
scoreboard players set zombie.state state 1
## record
execute if score zombie.round board matches 1 run stopsound @a[team=play.zombie] record
execute if score zombie.round board matches 1 run playsound minecraft:music.overworld.grove record @a[team=play.zombie] ~ ~ ~ 50 2 1

execute if score zombie.round board matches 3 run stopsound @a[team=play.zombie] record
execute if score zombie.round board matches 3 run playsound minecraft:music.overworld.snowy_slopes record @a[team=play.zombie] ~ ~ ~ 50 2 1

execute if score zombie.round board matches 5 run stopsound @a[team=play.zombie] record
execute if score zombie.round board matches 5 run playsound minecraft:music.game record @a[team=play.zombie] ~ ~ ~ 50 2 1

execute if score zombie.round board matches 7 run stopsound @a[team=play.zombie] record
execute if score zombie.round board matches 7 run playsound minecraft:music.overworld.jungle_and_forest record @a[team=play.zombie] ~ ~ ~ 50 2 1

execute if score zombie.round board matches 9 run stopsound @a[team=play.zombie] record
execute if score zombie.round board matches 9 run playsound minecraft:music.overworld.deep_dark record @a[team=play.zombie] ~ ~ ~ 50 2 1

execute if score zombie.round board matches 11 run stopsound @a[team=play.zombie] record
execute if score zombie.round board matches 11 run playsound minecraft:music_disc.13 record @a[team=play.zombie] ~ ~ ~ 50 2 1

execute if score zombie.round board matches 13 run stopsound @a[team=play.zombie] record
execute if score zombie.round board matches 13 run playsound minecraft:music_disc.11 record @a[team=play.zombie] ~ ~ ~ 50 2 1

execute if score zombie.round board matches 15 run stopsound @a[team=play.zombie] record
execute if score zombie.round board matches 15 run playsound minecraft:music_disc.pigstep record @a[team=play.zombie] ~ ~ ~ 50 2 1

execute if score zombie.round board matches 17 run stopsound @a[team=play.zombie] record
execute if score zombie.round board matches 17 run playsound minecraft:music_disc.mall record @a[team=play.zombie] ~ ~ ~ 50 2 1

execute if score zombie.round board matches 19 run stopsound @a[team=play.zombie] record
execute if score zombie.round board matches 19 run playsound minecraft:music_disc.blocks record @a[team=play.zombie] ~ ~ ~ 50 2 1

execute if score zombie.round board matches 21 run stopsound @a[team=play.zombie] record
execute if score zombie.round board matches 21 run playsound minecraft:music_disc.stal record @a[team=play.zombie] ~ ~ ~ 50 2 1

execute if score zombie.round board matches 23 run stopsound @a[team=play.zombie] record
execute if score zombie.round board matches 23 run playsound minecraft:music_disc.otherside record @a[team=play.zombie] ~ ~ ~ 50 2 1

execute if score zombie.round board matches 25 run stopsound @a[team=play.zombie] record
execute if score zombie.round board matches 25 run playsound minecraft:music_disc.cat record @a[team=play.zombie] ~ ~ ~ 50 2 1

## Tips
execute if score zombie.round board matches 1 run tellraw @a[team=play.zombie] ["\n\u00a7e    提示：\n\u00a7a    散布在地图里的商店（牌子），右键即可交互，购买更好的装备！\n"]
execute if score zombie.round board matches 5 run tellraw @a[team=play.zombie] ["\n\u00a7e    提示：\n\u00a7a    在\u00a7c食堂\u00a7a内，可以购买回血用品，补充村民和自己的生命值！\n"]
execute if score zombie.round board matches 5 run tellraw @a[team=play.zombie] ["\n\u00a7a   提示：本轮为休息时间。\n\n\u00a76+1000 Coins (奖励)"]
execute if score zombie.round board matches 10 run tellraw @a[team=play.zombie] ["\n\u00a7a   提示：本轮只会生成雪傀儡与铁傀儡。\n"]
execute if score zombie.round board matches 12..15 run tellraw @a[team=play.zombie] ["\n\u00a7a   提示：从本轮只会生成苦力怕。\n"]
execute if score zombie.round board matches 18 run tellraw @a[team=play.zombie] ["\n\u00a7b   特殊事件：本局只会生成杀手兔。\n"]
execute if score zombie.round board matches 19 run tellraw @a[team=play.zombie] ["\n\u00a7b   特殊事件：本局只会生成僵尸猪人。\n"]
execute if score zombie.round board matches 25 run tellraw @a[team=play.zombie] ["\n\u00a7c\u00a7l    BOSS 来临\n"]
execute if score zombie.round board matches 20 run tellraw @a[team=play.zombie] ["\n\u00a7a   提示：本轮只会生成凋灵骷髅与普通骷髅。\n"]
execute if score zombie.round board matches 23 run tellraw @a[team=play.zombie] ["\n  \u00a7c僵尸强化！\n"]


## Zombies
execute if score zombie.round board matches 1 as @e[tag=zombie.spawn.now,sort=random,limit=5] at @s run summon zombie ~ ~ ~ {Tags:["pve.zombie"],DeathLootTable:"",PersistenceRequired:1b,Attributes:[{Base:0.2d,Name:"generic.movement_speed"},{Base:3d,Name:"generic.attack_damage"},{Base:1d,Name:"generic.attack_speed"}]}
execute as @a[team=play.zombie] run execute if score zombie.round board matches 2..2 as @e[tag=zombie.spawn.now,sort=random,limit=5] at @s run summon zombie ~ ~ ~ {Tags:["pve.zombie"],DeathLootTable:"",PersistenceRequired:1b,Attributes:[{Base:0.2d,Name:"generic.movement_speed"},{Base:3d,Name:"generic.attack_damage"},{Base:1d,Name:"generic.attack_speed"}]}
execute as @a[team=play.zombie] run execute if score zombie.round board matches 3..4 as @e[tag=zombie.spawn.now,sort=random,limit=4] at @s run summon zombie ~ ~ ~ {Tags:["pve.zombie"],DeathLootTable:"",PersistenceRequired:1b,Attributes:[{Base:0.2d,Name:"generic.movement_speed"},{Base:3d,Name:"generic.attack_damage"},{Base:1d,Name:"generic.attack_speed"}]}
execute as @a[team=play.zombie] run execute if score zombie.round board matches 3..4 as @e[tag=zombie.spawn.now,sort=random,limit=3] at @s run summon skeleton ~ ~ ~ {Tags:["pve.zombie"],DeathLootTable:"",PersistenceRequired:1b,Attributes:[{Base:0.3d,Name:"generic.movement_speed"},{Base:3d,Name:"generic.attack_damage"},{Base:1d,Name:"generic.attack_speed"}]}
execute if score zombie.round board matches 5 run function zombieever/door/open1

execute as @a[team=play.zombie] run execute if score zombie.round board matches 5 as @e[tag=zombie.spawn.now,sort=random,limit=1] at @s run summon pig ~ ~ ~ {Tags:["pve.zombie","pve.coin"],DeathLootTable:"",PersistenceRequired:1b,Health:100f,Attributes:[{Base:300d,Name:"generic.max_health"}]}
execute as @a[team=play.zombie] if score zombie.round board matches 5 run scoreboard players add @s zombie.coin 1000
# execute if score zombie.round board matches 5 as @e[tag=zombie.spawn.now,sort=random,limit=3] at @s run summon slime ~ ~ ~ {Tags:["pve.zombie"],DeathLootTable:"",PersistenceRequired:1b,Size:0}
execute if score zombie.round board matches 6..9 as @e[tag=zombie.spawn.now,sort=random,limit=3] at @s run summon skeleton ~ ~ ~ {Tags:["pve.zombie"],DeathLootTable:"",PersistenceRequired:1b,HandItems:[{id:"minecraft:bow",Count:1b},{}],Attributes:[{Base:0.25d,Name:"generic.movement_speed"},{Base:3d,Name:"generic.attack_damage"},{Base:1d,Name:"generic.attack_speed"}]}
execute if score zombie.round board matches 7..9 as @e[tag=zombie.spawn.now,sort=random,limit=4] at @s run summon llama ~ ~ ~ {Tags:["pve.zombie"],DeathLootTable:"",PersistenceRequired:1b}
execute if score zombie.round board matches 6..9 as @e[tag=zombie.spawn.now,sort=random,limit=3] at @s run summon zombie ~ ~ ~ {Tags:["pve.zombie"],DeathLootTable:"",PersistenceRequired:1b,Attributes:[{Base:0.33d,Name:"generic.movement_speed"},{Base:3.3d,Name:"generic.attack_damage"},{Base:1d,Name:"generic.attack_speed"}]}
execute if score zombie.round board matches 10..11 as @e[tag=zombie.spawn.now,sort=random,limit=4] at @s run summon snow_golem ~ ~ ~ {Tags:["pve.zombie"],DeathLootTable:"",PersistenceRequired:1b,Attributes:[{Base:0.3d,Name:"generic.movement_speed"},{Base:7d,Name:"generic.attack_damage"},{Base:1d,Name:"generic.attack_speed"}]}
execute if score zombie.round board matches 10..11 as @e[tag=zombie.spawn.now,sort=random,limit=4] at @s run summon iron_golem ~ ~ ~ {Tags:["pve.zombie"],DeathLootTable:"",PersistenceRequired:1b,Attributes:[{Base:0.3d,Name:"generic.movement_speed"},{Base:7d,Name:"generic.attack_damage"},{Base:1d,Name:"generic.attack_speed"}]}
execute if score zombie.round board matches 12..15 as @e[tag=zombie.spawn.now,sort=random,limit=4] at @s run summon creeper ~ ~ ~ {Tags:["pve.zombie"],DeathLootTable:"",PersistenceRequired:1b,Attributes:[{Base:0.3d,Name:"generic.movement_speed"},{Base:3d,Name:"generic.attack_damage"},{Base:1d,Name:"generic.attack_speed"}]}
execute if score zombie.round board matches 13..15 as @e[tag=zombie.spawn.now,sort=random,limit=2] at @s run summon creeper ~ ~ ~ {Tags:["pve.zombie"],DeathLootTable:"",PersistenceRequired:1b,Attributes:[{Base:0.3d,Name:"generic.movement_speed"},{Base:3d,Name:"generic.attack_damage"},{Base:1d,Name:"generic.attack_speed"}]}
execute if score zombie.round board matches 14..15 as @e[tag=zombie.spawn.now,sort=random,limit=2] at @s run summon creeper ~ ~ ~ {Tags:["pve.zombie"],DeathLootTable:"",PersistenceRequired:1b,Attributes:[{Base:0.3d,Name:"generic.movement_speed"},{Base:3d,Name:"generic.attack_damage"},{Base:1d,Name:"generic.attack_speed"}]}
# execute if score zombie.round board matches 13..15 as @e[tag=zombie.spawn.now,sort=random,limit=9] at @s run summon zombie ~ ~ ~ {Tags:["pve.zombie"],DeathLootTable:"",PersistenceRequired:1b}
execute if score zombie.round board matches 16..17 as @e[tag=zombie.spawn.now,sort=random,limit=3] at @s run summon witch ~ ~ ~ {Tags:["pve.zombie"],DeathLootTable:"",PersistenceRequired:1b,Attributes:[{Base:0.23d,Name:"generic.movement_speed"},{Base:3d,Name:"generic.attack_damage"},{Base:1d,Name:"generic.attack_speed"}]}
execute if score zombie.round board matches 16..17 as @e[tag=zombie.spawn.now,sort=random,limit=3] at @s run summon zombie ~ ~ ~ {Tags:["pve.zombie"],DeathLootTable:"",PersistenceRequired:1b,Attributes:[{Base:0.3d,Name:"generic.movement_speed"},{Base:3d,Name:"generic.attack_damage"},{Base:1d,Name:"generic.attack_speed"}]}
execute if score zombie.round board matches 16..17 as @e[tag=zombie.spawn.now,sort=random,limit=3] at @s run summon creeper ~ ~ ~ {Tags:["pve.zombie"],DeathLootTable:"",PersistenceRequired:1b,Attributes:[{Base:0.33d,Name:"generic.movement_speed"},{Base:3d,Name:"generic.attack_damage"},{Base:1d,Name:"generic.attack_speed"}]}
execute if score zombie.round board matches 16..17 as @e[tag=zombie.spawn.now,sort=random,limit=3] at @s run summon spider ~ ~ ~ {Tags:["pve.zombie"],DeathLootTable:"",PersistenceRequired:1b,Attributes:[{Base:0.3d,Name:"generic.movement_speed"},{Base:3d,Name:"generic.attack_damage"},{Base:1d,Name:"generic.attack_speed"}]}
execute as @a[team=play.zombie] run execute if score zombie.round board matches 18 as @e[tag=zombie.spawn.now,sort=random,limit=5] at @s run summon rabbit ~ ~ ~ {RabbitType:99,Tags:["pve.zombie"],DeathLootTable:"",PersistenceRequired:1b,Health:10,Attributes:[{Base:0.5d,Name:"generic.movement_speed"},{Base:10d,Name:"generic.max_health"},{Base:1d,Name:"generic.attack_speed"}]}
execute if score zombie.round board matches 19..19 as @e[tag=zombie.spawn.now,sort=random,limit=4] at @s run summon zombified_piglin ~ ~ ~ {Tags:["pve.zombie"],DeathLootTable:"",PersistenceRequired:1b,Attributes:[{Base:0.4d,Name:"generic.movement_speed"},{Base:3d,Name:"generic.attack_damage"},{Base:1d,Name:"generic.attack_speed"}]}
execute if score zombie.round board matches 20 run function zombieever/door/open2
execute if score zombie.round board matches 20 as @e[tag=zombie.spawn.now,sort=random,limit=9] at @s run summon skeleton ~ ~ ~ {Tags:["pve.zombie"],DeathLootTable:"",PersistenceRequired:1b,HandItems:[{},{id:"minecraft:bow",Count:1b}],Attributes:[{Base:0.25d,Name:"generic.movement_speed"},{Base:3d,Name:"generic.attack_damage"},{Base:1d,Name:"generic.attack_speed"}]}
execute if score zombie.round board matches 20 as @e[tag=zombie.spawn.now,sort=random,limit=2] at @s run summon wither_skeleton ~ ~ ~ {Tags:["pve.zombie"],DeathLootTable:"",PersistenceRequired:1b,Attributes:[{Base:0.4d,Name:"generic.movement_speed"},{Base:3d,Name:"generic.attack_damage"},{Base:1d,Name:"generic.attack_speed"}]}

# execute if score zombie.round board matches 1..2 as @e[tag=zombie.spawn.now,sort=random,limit=3] at @s run summon skeleton ~ ~ ~ {Tags:["pve.zombie"],DeathLootTable:"",PersistenceRequired:1b}
# execute if score zombie.round board matches 3.. as @e[tag=zombie.spawn.now,sort=random,limit=3] at @s run summon skeleton ~ ~ ~ {Tags:["pve.zombie"],DeathLootTable:"",PersistenceRequired:1b}

scoreboard players set zombie.count tick 0
execute as @e[tag=pve.zombie] run scoreboard players add zombie.count tick 1
execute store result bossbar zombie:zombiecount max run scoreboard players get zombie.count tick

execute if score zombie.round board matches 21..22 as @e[tag=zombie.spawn.now,sort=random,limit=2] at @s run summon zombie ~ ~ ~ {Tags:["pve.zombie"],DeathLootTable:"",PersistenceRequired:1b,Attributes:[{Base:0.4d,Name:"generic.movement_speed"},{Base:3.5d,Name:"generic.attack_damage"},{Base:1d,Name:"generic.attack_speed"}]}
execute if score zombie.round board matches 23..24 as @e[tag=zombie.spawn.now,sort=random,limit=1] at @s run summon zombie ~ ~ ~ {Tags:["pve.zombie"],DeathLootTable:"",PersistenceRequired:1b,Attributes:[{Base:30d,Name:"generic.max_health"},{Base:0.5d,Name:"generic.movement_speed"},{Base:4d,Name:"generic.attack_damage"},{Base:1d,Name:"generic.attack_speed"}]}
execute if score zombie.round board matches 23..24 as @e[tag=zombie.spawn.now,sort=random,limit=3] at @s run summon skeleton ~ ~ ~ {Tags:["pve.zombie"],DeathLootTable:"",PersistenceRequired:1b,Attributes:[{Base:30d,Name:"generic.max_health"}],Health:30f,HandItems:[{id:"minecraft:bow",Count:1b},{}]}
execute if score zombie.round board matches 23..24 as @e[tag=zombie.spawn.now,sort=random,limit=4] at @s run summon wither_skeleton ~ ~ ~ {Tags:["pve.zombie"],DeathLootTable:"",PersistenceRequired:1b,Attributes:[{Base:30d,Name:"generic.max_health"},{Base:0.4d,Name:"generic.movement_speed"},{Base:3d,Name:"generic.attack_damage"},{Base:1d,Name:"generic.attack_speed"}],Health:30f}
execute if score zombie.round board matches 25 as @e[tag=zombie.spawn.now,sort=random,limit=4] at @s run summon zombie ~ ~ ~ {Tags:["pve.zombie"],DeathLootTable:"",PersistenceRequired:1b,Attributes:[{Base:30d,Name:"generic.max_health"},{Base:0.4d,Name:"generic.movement_speed"},{Base:3d,Name:"generic.attack_damage"},{Base:1d,Name:"generic.attack_speed"}],Health:30f}


execute as @a[team=play.zombie] run execute if score zombie.round board matches 25 as @e[tag=zombie.spawn.now,sort=random,limit=1] at @s run summon pillager ~ ~ ~ {Tags:["pve.zombie"],DeathLootTable:"",PersistenceRequired:1b,Attributes:[{Base:30d,Name:"generic.max_health"}],Health:60f,HandItems:[{id:"minecraft:crossbow",Count:1b},{}]}
execute as @a[team=play.zombie] run execute if score zombie.round board matches 25 as @e[tag=zombie.spawn.now,sort=random,limit=1] at @s run summon vindicator ~ ~ ~ {Tags:["pve.zombie"],DeathLootTable:"",PersistenceRequired:1b,Attributes:[{Base:30d,Name:"generic.max_health"}],Health:60f,HandItems:[{id:"minecraft:crossbow",Count:1b},{}]}
execute if score zombie.round board matches 25 as @e[tag=zombie.spawn.now,sort=random,limit=1] at @s run summon ravager ~ ~ ~ {Tags:["pve.zombie"],DeathLootTable:"",PersistenceRequired:1b,Attributes:[{Base:30d,Name:"generic.max_health"}],Health:60f}
execute if score zombie.round board matches 25 as @e[tag=zombie.spawn.now,sort=random,limit=5] at @s run summon skeleton ~ ~ ~ {Tags:["pve.zombie"],DeathLootTable:"",PersistenceRequired:1b,Attributes:[{Base:30d,Name:"generic.max_health"}],Health:30f,HandItems:[{id:"minecraft:bow",Count:1b},{}]}
execute if score zombie.round board matches 25 as @e[tag=zombie.boss,sort=random,limit=1] at @s run summon wither ~ ~ ~ {Tags:["pve.zombie"],DeathLootTable:"",PersistenceRequired:1b,Attributes:[{Base:90d,Name:"generic.max_health"},{Base:0.5d,Name:"generic.movement_speed"},{Base:3d,Name:"generic.attack_damage"},{Base:1d,Name:"generic.attack_speed"}],Health:90f}
execute if score zombie.round board matches 25 as @e[type=wither,tag=pve.zombie] at @s run summon firework_rocket ~ ~2 ~ {LifeTime:20,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;1973019,11743532,3887386,5320730,2437522,8073150,2651799,11250603,4408131,14188952,4312372,14602026,6719955,12801229,15435844,15790320],FadeColors:[I;1973019,11743532,3887386,5320730,2437522,8073150,2651799,11250603,4408131,14188952,4312372,14602026,6719955,12801229,15435844,15790320]}],Flight:1}}}}

execute if score zombie.round board matches 26 run tellraw @a[team=play.zombie] ["\n\u00a7c\u00a7l    BOSS 来临\n"]
execute if score zombie.round board matches 26 as @e[tag=zombie.spawn.now,sort=random,limit=4] at @s run summon skeleton ~ ~ ~ {Tags:["pve.zombie"],DeathLootTable:"",PersistenceRequired:1b,Attributes:[{Base:30d,Name:"generic.max_health"},{Base:0.5d,Name:"generic.movement_speed"},{Base:3d,Name:"generic.attack_damage"},{Base:1d,Name:"generic.attack_speed"}],Health:30f}
execute if score zombie.round board matches 26 as @e[tag=zombie.boss,sort=random,limit=2] at @s run summon wither ~ ~ ~ {Tags:["pve.zombie"],DeathLootTable:"",PersistenceRequired:1b,Attributes:[{Base:50d,Name:"generic.max_health"}],Health:50f}
execute as @a[team=play.zombie] run execute if score zombie.round board matches 26 as @e[tag=zombie.spawn.now,sort=random,limit=2] at @s run summon pillager ~ ~ ~ {Tags:["pve.zombie"],DeathLootTable:"",PersistenceRequired:1b,Attributes:[{Base:30d,Name:"generic.max_health"}],Health:60f,HandItems:[{id:"minecraft:crossbow",Count:1b},{}]}
execute as @a[team=play.zombie] run execute if score zombie.round board matches 26 as @e[tag=zombie.spawn.now,sort=random,limit=2] at @s run summon vindicator ~ ~ ~ {Tags:["pve.zombie"],DeathLootTable:"",PersistenceRequired:1b,Attributes:[{Base:30d,Name:"generic.max_health"}],Health:60f,HandItems:[{id:"minecraft:crossbow",Count:1b},{}]}
execute if score zombie.round board matches 26 as @e[tag=zombie.spawn.now,sort=random,limit=2] at @s run summon ravager ~ ~ ~ {Tags:["pve.zombie"],DeathLootTable:"",PersistenceRequired:1b,Attributes:[{Base:30d,Name:"generic.max_health"}],Health:60f}
execute if score zombie.round board matches 26 as @e[type=wither,tag=pve.zombie] at @s run summon firework_rocket ~ ~2 ~ {LifeTime:20,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;1973019,11743532,3887386,5320730,2437522,8073150,2651799,11250603,4408131,14188952,4312372,14602026,6719955,12801229,15435844,15790320],FadeColors:[I;1973019,11743532,3887386,5320730,2437522,8073150,2651799,11250603,4408131,14188952,4312372,14602026,6719955,12801229,15435844,15790320]}],Flight:1}}}}
# zombie.boss

execute if score zombie.round board matches 25..26 as @e[tag=zombie.spawn.now,sort=random,limit=10] at @s run summon zombie ~ ~ ~ {Tags:["pve.zombie"],DeathLootTable:"",PersistenceRequired:1b,Attributes:[{Base:30d,Name:"generic.max_health"},{Base:0.55d,Name:"generic.movement_speed"},{Base:6d,Name:"generic.attack_damage"},{Base:2d,Name:"generic.attack_speed"}]}

## 结束
# execute if score zombie.round board matches 23.. as @e[tag=zombie.spawn.now,sort=random,limit=2] at @s run summon wither_skeleton ~ ~ ~ {Tags:["pve.zombie"],DeathLootTable:"",PersistenceRequired:1b}
execute if score zombie.round board matches 27.. run function zombieever/over/win