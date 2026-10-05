# 铁傀儡守卫：物品定义只在这里一份（商店购买 / 撤回都调它）
# PlayerCreated:0b 是关键 —— 玩家建造的铁傀儡默认「永远不会攻击玩家」，必须显式关掉
# DeathLootTable 设成 empty：铁傀儡原生会掉 3-5 铁锭 + 虞美人，不能变成刷铁机
# 队伍归属与索敌由 item/golem_owner + item/golem_place + item/golem_second 负责
give @s iron_golem_spawn_egg[can_place_on=[{blocks:"#minecraft:bwplace"}],tooltip_display={hidden_components:["minecraft:can_place_on","minecraft:can_break"]},can_break=[{blocks:"#minecraft:bedblocks"}],entity_data={id:"minecraft:iron_golem",PlayerCreated:0b,DeathLootTable:"minecraft:empty",Tags:["bw.golem.spawn","bw.golem.noface"]},item_name="铁傀儡守卫",lore=["§7放下后召唤一只铁傀儡守卫基地（血量 20），120 秒后离开","§7会主动追打敌人；同一队伍最多同时 3 只","§7不会攻击队友，近战的范围击退也不会误伤队友"]] 1