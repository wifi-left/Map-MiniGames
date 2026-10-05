# 救援平台：收回（执行者 = 平台标记；标记就放在平台层上，~-1 ~ ~-1 到 ~1 ~ ~1 正好是那 3×3）
fill ~-1 ~ ~-1 ~1 ~ ~1 air replace minecraft:slime_block
playsound minecraft:block.slime_block.break block @a ~ ~ ~ 1 1
kill @s
