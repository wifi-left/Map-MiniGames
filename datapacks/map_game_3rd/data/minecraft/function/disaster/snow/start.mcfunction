scoreboard players set disaster.snow.state state 1
## 先tp走关起来
execute in airworld run tp @a[team=disaster.snow] 221 -47 43 180 0
execute in airworld run clear @a[team=disaster.snow]

title @a[team=disaster.snow] title "\u00a7a地图准备中..."
title @a[team=disaster.snow] subtitle "\u00a7e请坐和放宽..."
team modify disaster.snow friendlyFire false
function disaster/snow/try_reset
