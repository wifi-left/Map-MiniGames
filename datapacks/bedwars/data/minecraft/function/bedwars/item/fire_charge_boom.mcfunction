# 在影子所在位置（挂载成功时 = 火球精确命中点）做一次方块爆破
# 半径 3 格（range 35 ≈ 3.0 格），威力比 TNT 羊小：profile "small" 只能破坏
# 羊毛 / 深色橡木木板 / 梯子 / 切制砂岩 —— 末地石、黑曜石、防爆玻璃都不会被炸掉
# 伤害、击退、音效、粒子都由原版火球自己的爆炸负责，所以这里不生成苦力怕，避免双倍伤害
function cmdtnt:rays {range:35,profile:"small"}
tag @s remove bw.fb.attached
kill @s
