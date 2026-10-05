# 蠹虫雪球：物品定义只在这里一份（商店购买 / 撤回都调它）
# 投出后由 use.snowball 统计 → item/playersnowball 挂影子 → item/bug_spawn 在落点生成
give @s snowball[item_name="蠹虫雪球",lore=["§7投出后落地召唤一只蠹虫，主动冲向最近的敌人","§7归属你的队伍：不会攻击队友，45 秒后消失"],custom_data={bw_bug:1}] 2
