# 漂浮羽毛：物品定义只在这里一份（商店购买 / 撤回都调它）
# consume_seconds:1 = 长按右键 1 秒才生效（照仓库里「飞行雪球」的 animation:"bow" 写法）
# 进度 minecraft:bedwars/levitation_feather 完成时触发 item/levitation_use
give @s feather[item_name="漂浮羽毛",lore=["§7长按右键 §f1 秒§7：获得 §f1 秒漂浮 §f15 级§7，并附带 §f5 秒缓降"],consumable={consume_seconds:1,animation:"bow",has_consume_particles:false,on_consume_effects:[],sound:"minecraft:entity.ender_pearl.throw"},custom_data={bw_levi:true}] 1
