## 缩圈结束（state 40）后不再落雪，但 testfor_over 仍在 2..99 内照常工作
execute if score disaster.snow.state state matches 3..39 run function minecraft:disaster/snow/summon/main