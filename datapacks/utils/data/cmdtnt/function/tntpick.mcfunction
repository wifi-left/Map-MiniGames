##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
## 完整的"爆炸"：射线销毁方块 + 音效 + 粒子 + 苦力怕（伤害与击退）
## range 69 ≈ 6.5 格；profile "big" = 可破坏含末地石在内的全部可爆破方块。
## 威力模型与档位说明见 cmdtnt:rays 的注释。
function cmdtnt:rays {range:69,profile:"big"}
playsound entity.generic.explode block @a ~ ~ ~ 6 0.7 0
particle minecraft:explosion ~ ~ ~ 1 1 1 1 10 normal
summon creeper ~ ~ ~ {DeathLootTable:"",Tags:["cmd.tnt.creeper"],Fuse:0,CustomName:["\u00a7c\u00a7lTNT SHEEP"],CustomNameVisible:0b,Invulnerable:1b,Silent:1b,PersistenceRequired:1b,ignited:true,ExplosionRadius:3b,attributes:[{base:1d,id:"max_health"},{base:1d,id:"knockback_resistance"},{base:0d,id:"movement_speed"},{base:1d,id:"follow_range"},{base:0d,id:"attack_damage"},{base:1d,id:"attack_speed"},{base:1d,id:"armor"},{base:1d,id:"armor_toughness"}]}
