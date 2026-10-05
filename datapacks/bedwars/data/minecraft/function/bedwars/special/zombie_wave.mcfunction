# 僵尸潮（mode 6）：每 120 秒（2 分钟）一波
# bw.zombie.t 在 resets/resetover 里按 mode 6 初始化成 120
scoreboard players remove bw.zombie.t board 1
execute if score bw.zombie.t board matches ..0 run function minecraft:bedwars/special/zombie_spawn
