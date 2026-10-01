
## 开局缓冲窗口结束：只推进窗口、不动速度。
## 缓冲本身是 true_start 设的 15s（速度仍为 1），接下来才是 9 次、每 6s 一次的加速，
## 所以「正式开场 → 到速度上限」= 15 + (10-1)*6 = 69s。
scoreboard players add disaster.snow.state state 1
scoreboard players set disaster.snow.time board 6
