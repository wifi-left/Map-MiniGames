##
## 被箭雨射中（id 80）：每 tick 给"还没被判定"的玩家落箭
##   - 一支落在正上方：站着不动必中，横向移动就能躲开
##   - 一支落在附近随机位置：箭雨的观感
## 已判中 / 已失败的玩家会被排除，所以每人最多挨一两支，不会被箭雨打死
##
## 本场景期间抗性会被换成低等级 + 吸收（见 tick.mcfunction），箭矢才会真的造成伤害
##
execute if score t_says.scene board matches 80 as @a[team=t_says,gamemode=adventure,tag=!t_says.finished,tag=!t_says.failed] at @s run function minecraft:t_says/scene/special/rain_one
