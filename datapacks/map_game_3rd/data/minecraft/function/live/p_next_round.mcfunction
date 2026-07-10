tellraw @s ["\n\u00a7a\u00a7l LIVE LONGEST 追杀游戏\n\u00a76\u00a7l 游戏规则\n\u00a7b 逃跑！不要被追杀者抓到！\n"]
gamemode adventure @s
clear @s *[custom_data~{live.equipment:1}]
execute in overworld run spreadplayers 196 255 0 5 under -53 false @s
function minecraft:live/items/runner
give @s minecraft:heavy_weighted_pressure_plate[custom_data={live.equipment:1},tooltip_display={hidden_components:["can_place_on"]},can_place_on={blocks:["slime_block"]}] 8
effect give @s instant_health 2 25 true