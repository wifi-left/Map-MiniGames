scoreboard players operation disaster.snow.count temp = disaster.snow.speed board
## 落雪范围跟随安全区（radius 由 shrink/trigger 维护），避免实体掉进虚空堆积
## 先写默认值：万一分数的计分板还没建立，get 失败也不会让下面的宏取不到参数
data modify storage disaster:snow ran_pos.r set value 19
execute store result storage disaster:snow ran_pos.r int 1 run scoreboard players get disaster.snow.radius board
function minecraft:disaster/snow/summon/per_summon
