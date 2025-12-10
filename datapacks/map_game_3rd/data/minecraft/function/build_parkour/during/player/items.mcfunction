# red_concrete
# black_concrete
# pink_concrete
# light_blue_concrete
# lime_concrete
# yellow_concrete
# brown_concrete
# prismarine_slab
# quartz_block
# quartz_slab
# quartz_slab
# iron_bars
# oak_trapdoor
# oak_door
# zombie_head
# ladder
# scaffolding
# slime_block
# honey_block
execute unless items entity @s container.* scaffolding unless items entity @s player.cursor scaffolding unless items entity @s weapon.offhand scaffolding run clear @s scaffolding
execute unless items entity @s container.* scaffolding unless items entity @s player.cursor scaffolding unless items entity @s weapon.offhand scaffolding run give @s scaffolding[custom_data={"build_parkour":1},can_break={blocks:"#build_parkour/building_blocks_destroy"},can_place_on={blocks:"#build_parkour/building_blocks"},tooltip_display={hidden_components:["can_break","can_place_on"]},item_name='脚手架 (仅供建造，跑酷时会移除)']
execute unless items entity @s container.* quartz_block unless items entity @s player.cursor quartz_block unless items entity @s weapon.offhand quartz_block run clear @s quartz_block
execute unless items entity @s container.* quartz_block unless items entity @s player.cursor quartz_block unless items entity @s weapon.offhand quartz_block run give @s quartz_block[custom_data={"build_parkour":1},can_break={blocks:"#build_parkour/building_blocks_destroy"},can_place_on={blocks:"#build_parkour/building_blocks"},tooltip_display={hidden_components:["can_break","can_place_on"]}]
execute unless items entity @s container.* quartz_slab unless items entity @s player.cursor quartz_slab unless items entity @s weapon.offhand quartz_slab run clear @s quartz_slab
execute unless items entity @s container.* quartz_slab unless items entity @s player.cursor quartz_slab unless items entity @s weapon.offhand quartz_slab run give @s quartz_slab[custom_data={"build_parkour":1},can_break={blocks:"#build_parkour/building_blocks_destroy"},can_place_on={blocks:"#build_parkour/building_blocks"},tooltip_display={hidden_components:["can_break","can_place_on"]}]
execute unless items entity @s container.* quartz_slab unless items entity @s player.cursor quartz_slab unless items entity @s weapon.offhand quartz_slab run clear @s quartz_slab
execute unless items entity @s container.* quartz_slab unless items entity @s player.cursor quartz_slab unless items entity @s weapon.offhand quartz_slab run give @s quartz_slab[custom_data={"build_parkour":1},can_break={blocks:"#build_parkour/building_blocks_destroy"},can_place_on={blocks:"#build_parkour/building_blocks"},tooltip_display={hidden_components:["can_break","can_place_on"]}]

execute unless items entity @s container.* black_concrete unless items entity @s player.cursor black_concrete unless items entity @s weapon.offhand black_concrete run clear @s black_concrete
execute unless items entity @s container.* black_concrete unless items entity @s player.cursor black_concrete unless items entity @s weapon.offhand black_concrete run give @s black_concrete[custom_data={"build_parkour":1},can_break={blocks:"#build_parkour/building_blocks_destroy"},can_place_on={blocks:"#build_parkour/building_blocks"},tooltip_display={hidden_components:["can_break","can_place_on"]},item_name='死亡方块']
execute unless items entity @s container.* pink_concrete unless items entity @s player.cursor pink_concrete unless items entity @s weapon.offhand pink_concrete run clear @s pink_concrete
execute unless items entity @s container.* pink_concrete unless items entity @s player.cursor pink_concrete unless items entity @s weapon.offhand pink_concrete run give @s pink_concrete[custom_data={"build_parkour":1},can_break={blocks:"#build_parkour/building_blocks_destroy"},can_place_on={blocks:"#build_parkour/building_blocks"},tooltip_display={hidden_components:["can_break","can_place_on"]},item_name='飞行方块']
execute unless items entity @s container.* light_blue_concrete unless items entity @s player.cursor light_blue_concrete unless items entity @s weapon.offhand light_blue_concrete run clear @s light_blue_concrete
execute unless items entity @s container.* light_blue_concrete unless items entity @s player.cursor light_blue_concrete unless items entity @s weapon.offhand light_blue_concrete run give @s light_blue_concrete[custom_data={"build_parkour":1},can_break={blocks:"#build_parkour/building_blocks_destroy"},can_place_on={blocks:"#build_parkour/building_blocks"},tooltip_display={hidden_components:["can_break","can_place_on"]},item_name='速度方块']
execute unless items entity @s container.* lime_concrete unless items entity @s player.cursor lime_concrete unless items entity @s weapon.offhand lime_concrete run clear @s lime_concrete
execute unless items entity @s container.* lime_concrete unless items entity @s player.cursor lime_concrete unless items entity @s weapon.offhand lime_concrete run give @s lime_concrete[custom_data={"build_parkour":1},can_break={blocks:"#build_parkour/building_blocks_destroy"},can_place_on={blocks:"#build_parkour/building_blocks"},tooltip_display={hidden_components:["can_break","can_place_on"]},item_name='跳跃方块']
execute unless items entity @s container.* yellow_concrete unless items entity @s player.cursor yellow_concrete unless items entity @s weapon.offhand yellow_concrete run clear @s yellow_concrete
execute unless items entity @s container.* yellow_concrete unless items entity @s player.cursor yellow_concrete unless items entity @s weapon.offhand yellow_concrete run give @s yellow_concrete[custom_data={"build_parkour":1},can_break={blocks:"#build_parkour/building_blocks_destroy"},can_place_on={blocks:"#build_parkour/building_blocks"},tooltip_display={hidden_components:["can_break","can_place_on"]},item_name='失明方块']
execute unless items entity @s container.* brown_concrete unless items entity @s player.cursor brown_concrete unless items entity @s weapon.offhand brown_concrete run clear @s brown_concrete
execute unless items entity @s container.* brown_concrete unless items entity @s player.cursor brown_concrete unless items entity @s weapon.offhand brown_concrete run give @s brown_concrete[custom_data={"build_parkour":1},can_break={blocks:"#build_parkour/building_blocks_destroy"},can_place_on={blocks:"#build_parkour/building_blocks"},tooltip_display={hidden_components:["can_break","can_place_on"]},item_name='缓慢方块']

execute unless items entity @s container.* iron_bars unless items entity @s player.cursor iron_bars unless items entity @s weapon.offhand iron_bars run clear @s iron_bars
execute unless items entity @s container.* iron_bars unless items entity @s player.cursor iron_bars unless items entity @s weapon.offhand iron_bars run give @s iron_bars[custom_data={"build_parkour":1},can_break={blocks:"#build_parkour/building_blocks_destroy"},can_place_on={blocks:"#build_parkour/building_blocks"},tooltip_display={hidden_components:["can_break","can_place_on"]}]
execute unless items entity @s container.* oak_trapdoor unless items entity @s player.cursor oak_trapdoor unless items entity @s weapon.offhand oak_trapdoor run clear @s oak_trapdoor
execute unless items entity @s container.* oak_trapdoor unless items entity @s player.cursor oak_trapdoor unless items entity @s weapon.offhand oak_trapdoor run give @s oak_trapdoor[custom_data={"build_parkour":1},can_break={blocks:"#build_parkour/building_blocks_destroy"},can_place_on={blocks:"#build_parkour/building_blocks"},tooltip_display={hidden_components:["can_break","can_place_on"]}]
execute unless items entity @s container.* oak_door unless items entity @s player.cursor oak_door unless items entity @s weapon.offhand oak_door run clear @s oak_door
execute unless items entity @s container.* oak_door unless items entity @s player.cursor oak_door unless items entity @s weapon.offhand oak_door run give @s oak_door[custom_data={"build_parkour":1},can_break={blocks:"#build_parkour/building_blocks_destroy"},can_place_on={blocks:"#build_parkour/building_blocks"},tooltip_display={hidden_components:["can_break","can_place_on"]}]
execute unless items entity @s container.* zombie_head unless items entity @s player.cursor zombie_head unless items entity @s weapon.offhand zombie_head run clear @s zombie_head
execute unless items entity @s container.* zombie_head unless items entity @s player.cursor zombie_head unless items entity @s weapon.offhand zombie_head run give @s zombie_head[custom_data={"build_parkour":1},can_break={blocks:"#build_parkour/building_blocks_destroy"},can_place_on={blocks:"#build_parkour/building_blocks"},tooltip_display={hidden_components:["can_break","can_place_on"]}]
execute unless items entity @s container.* ladder unless items entity @s player.cursor ladder unless items entity @s weapon.offhand ladder run clear @s ladder
execute unless items entity @s container.* ladder unless items entity @s player.cursor ladder unless items entity @s weapon.offhand ladder run give @s ladder[custom_data={"build_parkour":1},can_break={blocks:"#build_parkour/building_blocks_destroy"},can_place_on={blocks:"#build_parkour/building_blocks"},tooltip_display={hidden_components:["can_break","can_place_on"]}]

execute unless items entity @s container.* packed_ice unless items entity @s player.cursor packed_ice unless items entity @s weapon.offhand packed_ice run clear @s packed_ice
execute unless items entity @s container.* packed_ice unless items entity @s player.cursor packed_ice unless items entity @s weapon.offhand packed_ice run give @s packed_ice[custom_data={"build_parkour":1},can_break={blocks:"#build_parkour/building_blocks_destroy"},can_place_on={blocks:"#build_parkour/building_blocks"},tooltip_display={hidden_components:["can_break","can_place_on"]}]

execute unless items entity @s container.* slime_block unless items entity @s player.cursor slime_block unless items entity @s weapon.offhand slime_block run clear @s slime_block
execute unless items entity @s container.* slime_block unless items entity @s player.cursor slime_block unless items entity @s weapon.offhand slime_block run give @s slime_block[custom_data={"build_parkour":1},can_break={blocks:"#build_parkour/building_blocks_destroy"},can_place_on={blocks:"#build_parkour/building_blocks"},tooltip_display={hidden_components:["can_break","can_place_on"]}]
execute unless items entity @s container.* honey_block unless items entity @s player.cursor honey_block unless items entity @s weapon.offhand honey_block run clear @s honey_block
execute unless items entity @s container.* honey_block unless items entity @s player.cursor honey_block unless items entity @s weapon.offhand honey_block run give @s honey_block[custom_data={"build_parkour":1},can_break={blocks:"#build_parkour/building_blocks_destroy"},can_place_on={blocks:"#build_parkour/building_blocks"},tooltip_display={hidden_components:["can_break","can_place_on"]}]

execute unless items entity @s container.* magma_block unless items entity @s player.cursor magma_block unless items entity @s weapon.offhand magma_block run clear @s magma_block
execute unless items entity @s container.* magma_block unless items entity @s player.cursor magma_block unless items entity @s weapon.offhand magma_block run give @s magma_block[custom_data={"build_parkour":1},can_break={blocks:"#build_parkour/building_blocks_destroy"},can_place_on={blocks:"#build_parkour/building_blocks"},tooltip_display={hidden_components:["can_break","can_place_on"]}]

execute unless items entity @s container.* bat_spawn_egg unless items entity @s player.cursor bat_spawn_egg unless items entity @s weapon.offhand bat_spawn_egg run clear @s bat_spawn_egg
execute unless items entity @s container.* bat_spawn_egg unless items entity @s player.cursor bat_spawn_egg unless items entity @s weapon.offhand bat_spawn_egg run give @s bat_spawn_egg[custom_data={"build_parkour":1},can_break={blocks:"#build_parkour/building_blocks_destroy"},can_place_on={blocks:"#build_parkour/building_blocks"},tooltip_display={hidden_components:["can_break","can_place_on"]},item_name='放置：三叉戟方块',entity_data={id:"minecraft:marker",Tags:["build_parkour.place.trident"]},item_model='prismarine_slab']

execute unless items entity @s container.* chicken_spawn_egg unless items entity @s player.cursor chicken_spawn_egg unless items entity @s weapon.offhand chicken_spawn_egg run clear @s chicken_spawn_egg
execute unless items entity @s container.* chicken_spawn_egg unless items entity @s player.cursor chicken_spawn_egg unless items entity @s weapon.offhand chicken_spawn_egg run give @s chicken_spawn_egg[custom_data={"build_parkour":1},can_break={blocks:"#build_parkour/building_blocks_destroy"},can_place_on={blocks:"#build_parkour/building_blocks"},tooltip_display={hidden_components:["can_break","can_place_on"]},item_name='放置：终点',entity_data={id:"minecraft:marker",Tags:["build_parkour.place.end"]},item_model='barrier']

effect give @s haste 2 255 true