execute unless items entity @s container.* white_wool run clear @s
execute unless items entity @s container.* ladder run clear @s
execute unless items entity @s container.* sand run clear @s
execute unless items entity @s container.* white_wool run give @s white_wool[can_place_on=[{blocks:"#bw_bridge_blocks"},{blocks:["bedrock","diamond_block","stone_bricks"]}],tooltip_display={hidden_components:[can_place_on]}] 320
execute unless items entity @s container.* ladder run give @s ladder[can_place_on=[{blocks:"#bw_bridge_blocks"},{blocks:["bedrock","diamond_block","stone_bricks"]}],tooltip_display={hidden_components:[can_place_on]}] 320
execute unless items entity @s container.* sand run give @s sand[can_place_on=[{blocks:"#bw_bridge_blocks"},{blocks:["bedrock","diamond_block","stone_bricks"]}],tooltip_display={hidden_components:[can_place_on]}] 320