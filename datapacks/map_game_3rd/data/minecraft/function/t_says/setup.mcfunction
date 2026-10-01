##
## 「不要相信T氏的话」初始化（由 map_main/setup.mcfunction 调用）
##
## 统计计分项：minecraft.used:<物品>，配合 t_says/tick.mcfunction 的"每 tick 先派发再清零"，
## 用于判定"本 tick 是否使用了某物品"。先 remove 再 add，保证每次 reload 都是干净状态。
##
## 注意：计分项名字最长 16 字符，所以统一用 t_says.<短名>
##

scoreboard objectives remove t_says.egg
scoreboard objectives remove t_says.snowball
scoreboard objectives remove t_says.bow
scoreboard objectives remove t_says.rod
scoreboard objectives remove t_says.bread
scoreboard objectives remove t_says.potion
scoreboard objectives remove t_says.wool
scoreboard objectives remove t_says.kills

scoreboard objectives add t_says.egg minecraft.used:minecraft.egg "T氏|扔鸡蛋"
scoreboard objectives add t_says.snowball minecraft.used:minecraft.snowball "T氏|扔雪球"
scoreboard objectives add t_says.bow minecraft.used:minecraft.bow "T氏|射箭"
scoreboard objectives add t_says.rod minecraft.used:minecraft.fishing_rod "T氏|钓鱼"
scoreboard objectives add t_says.bread minecraft.used:minecraft.bread "T氏|吃面包"
scoreboard objectives add t_says.potion minecraft.used:minecraft.potion "T氏|喝药水"
scoreboard objectives add t_says.wool minecraft.used:minecraft.white_wool "T氏|放方块"
scoreboard objectives add t_says.kills minecraft.custom:minecraft.mob_kills "T氏|击杀生物"

# 任务表（storage minecraft:t_says）
function minecraft:t_says/tasks/setup
