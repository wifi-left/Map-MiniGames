## 缩圈（枚举）
## 由 disaster/snow/shrink/trigger 调用，disaster.snow.shrink 为当前步数（1..20）。
## 第 N 步把最外一圈整根清空：y -49..-3（和 reset.mcfunction 管理的体积一致）。
## 注意不能只清最初那 3 层雪块：落雪的 armor_stand 会把雪块放在它自己所在的高度，
## 也就是当前地面高度，所以地面会不断往上长，只清底层等于白清、玩家看不出来。
##   39x39 -> 37x37 -> ... -> 3x3 -> 1x1 -> 空
## 每步只覆盖本环（最多 4 条 fill），此处全部枚举，运行时只做一次 score 比较。

## 第 1 步：39x39 -> 37x37
execute if score disaster.snow.shrink board matches 1 run fill 202 -49 1 240 -3 1 air
execute if score disaster.snow.shrink board matches 1 run fill 202 -49 39 240 -3 39 air
execute if score disaster.snow.shrink board matches 1 run fill 202 -49 2 202 -3 38 air
execute if score disaster.snow.shrink board matches 1 run fill 240 -49 2 240 -3 38 air
execute if score disaster.snow.shrink board matches 1 run particle block{block_state:{id:"snow_block"}} 221 -26 1 19 8 0 0 40 normal @a
execute if score disaster.snow.shrink board matches 1 run particle block{block_state:{id:"snow_block"}} 221 -26 39 19 8 0 0 40 normal @a
execute if score disaster.snow.shrink board matches 1 run particle block{block_state:{id:"snow_block"}} 202 -26 20 0 8 19 0 40 normal @a
execute if score disaster.snow.shrink board matches 1 run particle block{block_state:{id:"snow_block"}} 240 -26 20 0 8 19 0 40 normal @a

## 第 2 步：37x37 -> 35x35
execute if score disaster.snow.shrink board matches 2 run fill 203 -49 2 239 -3 2 air
execute if score disaster.snow.shrink board matches 2 run fill 203 -49 38 239 -3 38 air
execute if score disaster.snow.shrink board matches 2 run fill 203 -49 3 203 -3 37 air
execute if score disaster.snow.shrink board matches 2 run fill 239 -49 3 239 -3 37 air
execute if score disaster.snow.shrink board matches 2 run particle block{block_state:{id:"snow_block"}} 221 -26 2 18 8 0 0 40 normal @a
execute if score disaster.snow.shrink board matches 2 run particle block{block_state:{id:"snow_block"}} 221 -26 38 18 8 0 0 40 normal @a
execute if score disaster.snow.shrink board matches 2 run particle block{block_state:{id:"snow_block"}} 203 -26 20 0 8 18 0 40 normal @a
execute if score disaster.snow.shrink board matches 2 run particle block{block_state:{id:"snow_block"}} 239 -26 20 0 8 18 0 40 normal @a

## 第 3 步：35x35 -> 33x33
execute if score disaster.snow.shrink board matches 3 run fill 204 -49 3 238 -3 3 air
execute if score disaster.snow.shrink board matches 3 run fill 204 -49 37 238 -3 37 air
execute if score disaster.snow.shrink board matches 3 run fill 204 -49 4 204 -3 36 air
execute if score disaster.snow.shrink board matches 3 run fill 238 -49 4 238 -3 36 air
execute if score disaster.snow.shrink board matches 3 run particle block{block_state:{id:"snow_block"}} 221 -26 3 17 8 0 0 40 normal @a
execute if score disaster.snow.shrink board matches 3 run particle block{block_state:{id:"snow_block"}} 221 -26 37 17 8 0 0 40 normal @a
execute if score disaster.snow.shrink board matches 3 run particle block{block_state:{id:"snow_block"}} 204 -26 20 0 8 17 0 40 normal @a
execute if score disaster.snow.shrink board matches 3 run particle block{block_state:{id:"snow_block"}} 238 -26 20 0 8 17 0 40 normal @a

## 第 4 步：33x33 -> 31x31
execute if score disaster.snow.shrink board matches 4 run fill 205 -49 4 237 -3 4 air
execute if score disaster.snow.shrink board matches 4 run fill 205 -49 36 237 -3 36 air
execute if score disaster.snow.shrink board matches 4 run fill 205 -49 5 205 -3 35 air
execute if score disaster.snow.shrink board matches 4 run fill 237 -49 5 237 -3 35 air
execute if score disaster.snow.shrink board matches 4 run particle block{block_state:{id:"snow_block"}} 221 -26 4 16 8 0 0 40 normal @a
execute if score disaster.snow.shrink board matches 4 run particle block{block_state:{id:"snow_block"}} 221 -26 36 16 8 0 0 40 normal @a
execute if score disaster.snow.shrink board matches 4 run particle block{block_state:{id:"snow_block"}} 205 -26 20 0 8 16 0 40 normal @a
execute if score disaster.snow.shrink board matches 4 run particle block{block_state:{id:"snow_block"}} 237 -26 20 0 8 16 0 40 normal @a

## 第 5 步：31x31 -> 29x29
execute if score disaster.snow.shrink board matches 5 run fill 206 -49 5 236 -3 5 air
execute if score disaster.snow.shrink board matches 5 run fill 206 -49 35 236 -3 35 air
execute if score disaster.snow.shrink board matches 5 run fill 206 -49 6 206 -3 34 air
execute if score disaster.snow.shrink board matches 5 run fill 236 -49 6 236 -3 34 air
execute if score disaster.snow.shrink board matches 5 run particle block{block_state:{id:"snow_block"}} 221 -26 5 15 8 0 0 40 normal @a
execute if score disaster.snow.shrink board matches 5 run particle block{block_state:{id:"snow_block"}} 221 -26 35 15 8 0 0 40 normal @a
execute if score disaster.snow.shrink board matches 5 run particle block{block_state:{id:"snow_block"}} 206 -26 20 0 8 15 0 40 normal @a
execute if score disaster.snow.shrink board matches 5 run particle block{block_state:{id:"snow_block"}} 236 -26 20 0 8 15 0 40 normal @a

## 第 6 步：29x29 -> 27x27
execute if score disaster.snow.shrink board matches 6 run fill 207 -49 6 235 -3 6 air
execute if score disaster.snow.shrink board matches 6 run fill 207 -49 34 235 -3 34 air
execute if score disaster.snow.shrink board matches 6 run fill 207 -49 7 207 -3 33 air
execute if score disaster.snow.shrink board matches 6 run fill 235 -49 7 235 -3 33 air
execute if score disaster.snow.shrink board matches 6 run particle block{block_state:{id:"snow_block"}} 221 -26 6 14 8 0 0 40 normal @a
execute if score disaster.snow.shrink board matches 6 run particle block{block_state:{id:"snow_block"}} 221 -26 34 14 8 0 0 40 normal @a
execute if score disaster.snow.shrink board matches 6 run particle block{block_state:{id:"snow_block"}} 207 -26 20 0 8 14 0 40 normal @a
execute if score disaster.snow.shrink board matches 6 run particle block{block_state:{id:"snow_block"}} 235 -26 20 0 8 14 0 40 normal @a

## 第 7 步：27x27 -> 25x25
execute if score disaster.snow.shrink board matches 7 run fill 208 -49 7 234 -3 7 air
execute if score disaster.snow.shrink board matches 7 run fill 208 -49 33 234 -3 33 air
execute if score disaster.snow.shrink board matches 7 run fill 208 -49 8 208 -3 32 air
execute if score disaster.snow.shrink board matches 7 run fill 234 -49 8 234 -3 32 air
execute if score disaster.snow.shrink board matches 7 run particle block{block_state:{id:"snow_block"}} 221 -26 7 13 8 0 0 40 normal @a
execute if score disaster.snow.shrink board matches 7 run particle block{block_state:{id:"snow_block"}} 221 -26 33 13 8 0 0 40 normal @a
execute if score disaster.snow.shrink board matches 7 run particle block{block_state:{id:"snow_block"}} 208 -26 20 0 8 13 0 40 normal @a
execute if score disaster.snow.shrink board matches 7 run particle block{block_state:{id:"snow_block"}} 234 -26 20 0 8 13 0 40 normal @a

## 第 8 步：25x25 -> 23x23
execute if score disaster.snow.shrink board matches 8 run fill 209 -49 8 233 -3 8 air
execute if score disaster.snow.shrink board matches 8 run fill 209 -49 32 233 -3 32 air
execute if score disaster.snow.shrink board matches 8 run fill 209 -49 9 209 -3 31 air
execute if score disaster.snow.shrink board matches 8 run fill 233 -49 9 233 -3 31 air
execute if score disaster.snow.shrink board matches 8 run particle block{block_state:{id:"snow_block"}} 221 -26 8 12 8 0 0 40 normal @a
execute if score disaster.snow.shrink board matches 8 run particle block{block_state:{id:"snow_block"}} 221 -26 32 12 8 0 0 40 normal @a
execute if score disaster.snow.shrink board matches 8 run particle block{block_state:{id:"snow_block"}} 209 -26 20 0 8 12 0 40 normal @a
execute if score disaster.snow.shrink board matches 8 run particle block{block_state:{id:"snow_block"}} 233 -26 20 0 8 12 0 40 normal @a

## 第 9 步：23x23 -> 21x21
execute if score disaster.snow.shrink board matches 9 run fill 210 -49 9 232 -3 9 air
execute if score disaster.snow.shrink board matches 9 run fill 210 -49 31 232 -3 31 air
execute if score disaster.snow.shrink board matches 9 run fill 210 -49 10 210 -3 30 air
execute if score disaster.snow.shrink board matches 9 run fill 232 -49 10 232 -3 30 air
execute if score disaster.snow.shrink board matches 9 run particle block{block_state:{id:"snow_block"}} 221 -26 9 11 8 0 0 40 normal @a
execute if score disaster.snow.shrink board matches 9 run particle block{block_state:{id:"snow_block"}} 221 -26 31 11 8 0 0 40 normal @a
execute if score disaster.snow.shrink board matches 9 run particle block{block_state:{id:"snow_block"}} 210 -26 20 0 8 11 0 40 normal @a
execute if score disaster.snow.shrink board matches 9 run particle block{block_state:{id:"snow_block"}} 232 -26 20 0 8 11 0 40 normal @a

## 第 10 步：21x21 -> 19x19
execute if score disaster.snow.shrink board matches 10 run fill 211 -49 10 231 -3 10 air
execute if score disaster.snow.shrink board matches 10 run fill 211 -49 30 231 -3 30 air
execute if score disaster.snow.shrink board matches 10 run fill 211 -49 11 211 -3 29 air
execute if score disaster.snow.shrink board matches 10 run fill 231 -49 11 231 -3 29 air
execute if score disaster.snow.shrink board matches 10 run particle block{block_state:{id:"snow_block"}} 221 -26 10 10 8 0 0 40 normal @a
execute if score disaster.snow.shrink board matches 10 run particle block{block_state:{id:"snow_block"}} 221 -26 30 10 8 0 0 40 normal @a
execute if score disaster.snow.shrink board matches 10 run particle block{block_state:{id:"snow_block"}} 211 -26 20 0 8 10 0 40 normal @a
execute if score disaster.snow.shrink board matches 10 run particle block{block_state:{id:"snow_block"}} 231 -26 20 0 8 10 0 40 normal @a

## 第 11 步：19x19 -> 17x17
execute if score disaster.snow.shrink board matches 11 run fill 212 -49 11 230 -3 11 air
execute if score disaster.snow.shrink board matches 11 run fill 212 -49 29 230 -3 29 air
execute if score disaster.snow.shrink board matches 11 run fill 212 -49 12 212 -3 28 air
execute if score disaster.snow.shrink board matches 11 run fill 230 -49 12 230 -3 28 air
execute if score disaster.snow.shrink board matches 11 run particle block{block_state:{id:"snow_block"}} 221 -26 11 9 8 0 0 40 normal @a
execute if score disaster.snow.shrink board matches 11 run particle block{block_state:{id:"snow_block"}} 221 -26 29 9 8 0 0 40 normal @a
execute if score disaster.snow.shrink board matches 11 run particle block{block_state:{id:"snow_block"}} 212 -26 20 0 8 9 0 40 normal @a
execute if score disaster.snow.shrink board matches 11 run particle block{block_state:{id:"snow_block"}} 230 -26 20 0 8 9 0 40 normal @a

## 第 12 步：17x17 -> 15x15
execute if score disaster.snow.shrink board matches 12 run fill 213 -49 12 229 -3 12 air
execute if score disaster.snow.shrink board matches 12 run fill 213 -49 28 229 -3 28 air
execute if score disaster.snow.shrink board matches 12 run fill 213 -49 13 213 -3 27 air
execute if score disaster.snow.shrink board matches 12 run fill 229 -49 13 229 -3 27 air
execute if score disaster.snow.shrink board matches 12 run particle block{block_state:{id:"snow_block"}} 221 -26 12 8 8 0 0 40 normal @a
execute if score disaster.snow.shrink board matches 12 run particle block{block_state:{id:"snow_block"}} 221 -26 28 8 8 0 0 40 normal @a
execute if score disaster.snow.shrink board matches 12 run particle block{block_state:{id:"snow_block"}} 213 -26 20 0 8 8 0 40 normal @a
execute if score disaster.snow.shrink board matches 12 run particle block{block_state:{id:"snow_block"}} 229 -26 20 0 8 8 0 40 normal @a

## 第 13 步：15x15 -> 13x13
execute if score disaster.snow.shrink board matches 13 run fill 214 -49 13 228 -3 13 air
execute if score disaster.snow.shrink board matches 13 run fill 214 -49 27 228 -3 27 air
execute if score disaster.snow.shrink board matches 13 run fill 214 -49 14 214 -3 26 air
execute if score disaster.snow.shrink board matches 13 run fill 228 -49 14 228 -3 26 air
execute if score disaster.snow.shrink board matches 13 run particle block{block_state:{id:"snow_block"}} 221 -26 13 7 8 0 0 40 normal @a
execute if score disaster.snow.shrink board matches 13 run particle block{block_state:{id:"snow_block"}} 221 -26 27 7 8 0 0 40 normal @a
execute if score disaster.snow.shrink board matches 13 run particle block{block_state:{id:"snow_block"}} 214 -26 20 0 8 7 0 40 normal @a
execute if score disaster.snow.shrink board matches 13 run particle block{block_state:{id:"snow_block"}} 228 -26 20 0 8 7 0 40 normal @a

## 第 14 步：13x13 -> 11x11
execute if score disaster.snow.shrink board matches 14 run fill 215 -49 14 227 -3 14 air
execute if score disaster.snow.shrink board matches 14 run fill 215 -49 26 227 -3 26 air
execute if score disaster.snow.shrink board matches 14 run fill 215 -49 15 215 -3 25 air
execute if score disaster.snow.shrink board matches 14 run fill 227 -49 15 227 -3 25 air
execute if score disaster.snow.shrink board matches 14 run particle block{block_state:{id:"snow_block"}} 221 -26 14 6 8 0 0 40 normal @a
execute if score disaster.snow.shrink board matches 14 run particle block{block_state:{id:"snow_block"}} 221 -26 26 6 8 0 0 40 normal @a
execute if score disaster.snow.shrink board matches 14 run particle block{block_state:{id:"snow_block"}} 215 -26 20 0 8 6 0 40 normal @a
execute if score disaster.snow.shrink board matches 14 run particle block{block_state:{id:"snow_block"}} 227 -26 20 0 8 6 0 40 normal @a

## 第 15 步：11x11 -> 9x9
execute if score disaster.snow.shrink board matches 15 run fill 216 -49 15 226 -3 15 air
execute if score disaster.snow.shrink board matches 15 run fill 216 -49 25 226 -3 25 air
execute if score disaster.snow.shrink board matches 15 run fill 216 -49 16 216 -3 24 air
execute if score disaster.snow.shrink board matches 15 run fill 226 -49 16 226 -3 24 air
execute if score disaster.snow.shrink board matches 15 run particle block{block_state:{id:"snow_block"}} 221 -26 15 5 8 0 0 40 normal @a
execute if score disaster.snow.shrink board matches 15 run particle block{block_state:{id:"snow_block"}} 221 -26 25 5 8 0 0 40 normal @a
execute if score disaster.snow.shrink board matches 15 run particle block{block_state:{id:"snow_block"}} 216 -26 20 0 8 5 0 40 normal @a
execute if score disaster.snow.shrink board matches 15 run particle block{block_state:{id:"snow_block"}} 226 -26 20 0 8 5 0 40 normal @a

## 第 16 步：9x9 -> 7x7
execute if score disaster.snow.shrink board matches 16 run fill 217 -49 16 225 -3 16 air
execute if score disaster.snow.shrink board matches 16 run fill 217 -49 24 225 -3 24 air
execute if score disaster.snow.shrink board matches 16 run fill 217 -49 17 217 -3 23 air
execute if score disaster.snow.shrink board matches 16 run fill 225 -49 17 225 -3 23 air
execute if score disaster.snow.shrink board matches 16 run particle block{block_state:{id:"snow_block"}} 221 -26 16 4 8 0 0 40 normal @a
execute if score disaster.snow.shrink board matches 16 run particle block{block_state:{id:"snow_block"}} 221 -26 24 4 8 0 0 40 normal @a
execute if score disaster.snow.shrink board matches 16 run particle block{block_state:{id:"snow_block"}} 217 -26 20 0 8 4 0 40 normal @a
execute if score disaster.snow.shrink board matches 16 run particle block{block_state:{id:"snow_block"}} 225 -26 20 0 8 4 0 40 normal @a

## 第 17 步：7x7 -> 5x5
execute if score disaster.snow.shrink board matches 17 run fill 218 -49 17 224 -3 17 air
execute if score disaster.snow.shrink board matches 17 run fill 218 -49 23 224 -3 23 air
execute if score disaster.snow.shrink board matches 17 run fill 218 -49 18 218 -3 22 air
execute if score disaster.snow.shrink board matches 17 run fill 224 -49 18 224 -3 22 air
execute if score disaster.snow.shrink board matches 17 run particle block{block_state:{id:"snow_block"}} 221 -26 17 3 8 0 0 40 normal @a
execute if score disaster.snow.shrink board matches 17 run particle block{block_state:{id:"snow_block"}} 221 -26 23 3 8 0 0 40 normal @a
execute if score disaster.snow.shrink board matches 17 run particle block{block_state:{id:"snow_block"}} 218 -26 20 0 8 3 0 40 normal @a
execute if score disaster.snow.shrink board matches 17 run particle block{block_state:{id:"snow_block"}} 224 -26 20 0 8 3 0 40 normal @a

## 第 18 步：5x5 -> 3x3
execute if score disaster.snow.shrink board matches 18 run fill 219 -49 18 223 -3 18 air
execute if score disaster.snow.shrink board matches 18 run fill 219 -49 22 223 -3 22 air
execute if score disaster.snow.shrink board matches 18 run fill 219 -49 19 219 -3 21 air
execute if score disaster.snow.shrink board matches 18 run fill 223 -49 19 223 -3 21 air
execute if score disaster.snow.shrink board matches 18 run particle block{block_state:{id:"snow_block"}} 221 -26 18 2 8 0 0 40 normal @a
execute if score disaster.snow.shrink board matches 18 run particle block{block_state:{id:"snow_block"}} 221 -26 22 2 8 0 0 40 normal @a
execute if score disaster.snow.shrink board matches 18 run particle block{block_state:{id:"snow_block"}} 219 -26 20 0 8 2 0 40 normal @a
execute if score disaster.snow.shrink board matches 18 run particle block{block_state:{id:"snow_block"}} 223 -26 20 0 8 2 0 40 normal @a

## 第 19 步：3x3 -> 1x1
execute if score disaster.snow.shrink board matches 19 run fill 220 -49 19 222 -3 19 air
execute if score disaster.snow.shrink board matches 19 run fill 220 -49 21 222 -3 21 air
execute if score disaster.snow.shrink board matches 19 run fill 220 -49 20 220 -3 20 air
execute if score disaster.snow.shrink board matches 19 run fill 222 -49 20 222 -3 20 air
execute if score disaster.snow.shrink board matches 19 run particle block{block_state:{id:"snow_block"}} 221 -26 19 1 8 0 0 40 normal @a
execute if score disaster.snow.shrink board matches 19 run particle block{block_state:{id:"snow_block"}} 221 -26 21 1 8 0 0 40 normal @a
execute if score disaster.snow.shrink board matches 19 run particle block{block_state:{id:"snow_block"}} 220 -26 20 0 8 1 0 40 normal @a
execute if score disaster.snow.shrink board matches 19 run particle block{block_state:{id:"snow_block"}} 222 -26 20 0 8 1 0 40 normal @a

## 第 20 步：1x1 -> 0x0
execute if score disaster.snow.shrink board matches 20 run fill 221 -49 20 221 -3 20 air
execute if score disaster.snow.shrink board matches 20 run particle block{block_state:{id:"snow_block"}} 221 -26 20 0 8 0 0 40 normal @a

