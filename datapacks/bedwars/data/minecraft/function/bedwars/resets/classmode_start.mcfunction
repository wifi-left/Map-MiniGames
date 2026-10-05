# 职业模式（mode 5）：开局只给每个玩家发「职业选择」道具，装备要选完才发（和重生同一条规则）
# 「职业选择」在对话框里选定后会被 item/class_pick 收走，所以每次重生只有一次选择机会
scoreboard players set @a[tag=bw.play] bw.class 0
execute as @a[tag=bw.play] run function minecraft:bedwars/item/give_class_pick
tellraw @a[tag=bw.play] ["§a职业模式：右键「职业选择」道具选职业，§f选完才会发装备"]
