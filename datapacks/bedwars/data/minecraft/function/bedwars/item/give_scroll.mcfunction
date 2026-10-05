# 回城卷轴：物品定义只在这里一份（商店购买 / 退还都调它）
# consumable 让右键即用（0 秒、无动画），配合进度 minecraft:bedwars/return_scroll 触发 item/scroll_use
give @s paper[item_name="回城卷轴",lore=["§7右键开始 3 秒咏唱，期间不移动、不受伤则传送回出生点","§7移动或受伤会中断（卷轴不会退还）"],consumable={consume_seconds:0,animation:"none",has_consume_particles:false,on_consume_effects:[],sound:"item.book.page_turn"},use_cooldown={seconds:4,cooldown_group:"bw:return_scroll"},custom_data={bw_return_scroll:true}] 1
