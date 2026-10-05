# 无敌卷轴：物品定义只在这里一份（商店购买 / 撤回都调它）
# 底物用 paper（和回城卷轴同底物，靠 custom_data 区分）
give @s paper[item_name="无敌卷轴",lore=["§7使用后 3 秒内免疫伤害与击退"],consumable={consume_seconds:0,animation:"none",has_consume_particles:false,on_consume_effects:[],sound:"item.book.page_turn"},custom_data={bw_invul:true}] 1
