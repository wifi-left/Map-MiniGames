# 速建防御塔：转入建造状态（board 当建造计时，实体自身分数 —— 和 TNT 羊同一个写法）
# 保险：万一朝向标签一个都没打上（理论上不会），给个默认朝向，避免标记卡住不建造
execute unless entity @s[tag=bw.tower.f0] unless entity @s[tag=bw.tower.f1] unless entity @s[tag=bw.tower.f2] unless entity @s[tag=bw.tower.f3] run tag @s add bw.tower.f0
scoreboard players set @s board 0
tag @s remove bw.tower.spawn
tag @s add bw.tower.building
playsound minecraft:block.wool.place block @a ~ ~ ~ 1 1
