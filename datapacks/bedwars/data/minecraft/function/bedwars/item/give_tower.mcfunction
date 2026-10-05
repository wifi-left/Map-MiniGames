# 速建防御塔：物品定义只在这里一份（商店购买 / 退回都调它）
# 生物蛋里装的是 marker（和 TNT 羊同一个做法），落地后由 item/tower_place 接手
# 注意：刻意不带 custom_data/bwshopitem —— 这样它不会被商店的清扫逻辑删掉（和 TNT 羊一致）
give @s zombie_spawn_egg[item_model="chest",can_place_on=[{blocks:"#minecraft:bwplace"}],tooltip_display={hidden_components:["minecraft:can_place_on","minecraft:can_break"]},can_break=[{blocks:"#minecraft:bedblocks"}],entity_data={id:"minecraft:marker",Tags:["bw.tower.spawn","bw.tower.noface"]},item_name="速建防御塔",lore=["§7放下后 1 秒内搭起一座 5×5 的 7 层防御塔","§7羊毛按你的队伍染色，不会替换已有方块"]] 1
