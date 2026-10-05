# 魔法牛奶：物品定义只在这里一份（商店购买 / 撤回都调它）
# 底物用 potion + item_model 伪装成牛奶桶：牛奶桶自带 use_remainder（喝完还桶）且原版会清空所有效果，
# 用 potion 当底物既能保留「饮用」手感，剩下的玻璃瓶又会被 armor.mcfunction 自动清掉
# consumable 让右键即用（0 秒），配合进度 minecraft:bedwars/magic_milk 触发 item/milk_use
give @s minecraft:potion[item_model="milk_bucket",item_name="魔法牛奶",lore=["§7喝下后 60 秒内不会触发敌方陷阱"],consumable={consume_seconds:0,animation:"none",has_consume_particles:false,on_consume_effects:[],sound:"entity.generic.drink"},potion_contents={custom_color:16777215},custom_data={bw_milk:true}] 1
