##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# 按各队当前的锻造炉档位，把该队基地的三项生成间隔写对（幂等：重复调用结果一样）
#   档 I   铁升级      铁 50t → 30t（2.5s → 1.5s）
#   档 II  金升级      金 160t → 100t（8s → 5s）
#   档 III 绿宝石升级I 基地开始产绿宝石，1200t = 60s/个
#   档 IV  绿宝石升级II 600t = 30s/个（最快）
# 被 shop/buy_forge（买到手）和 resets/unlock_all_buffs（全解锁模式）调用
# 注意：只改「间隔」，不动当前倒计时 —— 计时在读秒结束时会自己套用新间隔

execute if score bw.forge.red board matches 1.. run scoreboard players set bw.set.ir.red board 30
execute if score bw.forge.red board matches 2.. run scoreboard players set bw.set.gd.red board 100
execute if score bw.forge.red board matches 3 run scoreboard players set bw.set.ef.red board 1200
execute if score bw.forge.red board matches 4 run scoreboard players set bw.set.ef.red board 600

execute if score bw.forge.blue board matches 1.. run scoreboard players set bw.set.ir.blue board 30
execute if score bw.forge.blue board matches 2.. run scoreboard players set bw.set.gd.blue board 100
execute if score bw.forge.blue board matches 3 run scoreboard players set bw.set.ef.blue board 1200
execute if score bw.forge.blue board matches 4 run scoreboard players set bw.set.ef.blue board 600

execute if score bw.forge.yellow board matches 1.. run scoreboard players set bw.set.ir.yellow board 30
execute if score bw.forge.yellow board matches 2.. run scoreboard players set bw.set.gd.yellow board 100
execute if score bw.forge.yellow board matches 3 run scoreboard players set bw.set.ef.yellow board 1200
execute if score bw.forge.yellow board matches 4 run scoreboard players set bw.set.ef.yellow board 600

execute if score bw.forge.green board matches 1.. run scoreboard players set bw.set.ir.green board 30
execute if score bw.forge.green board matches 2.. run scoreboard players set bw.set.gd.green board 100
execute if score bw.forge.green board matches 3 run scoreboard players set bw.set.ef.green board 1200
execute if score bw.forge.green board matches 4 run scoreboard players set bw.set.ef.green board 600
