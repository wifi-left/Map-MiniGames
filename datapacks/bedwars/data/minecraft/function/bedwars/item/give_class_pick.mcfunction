# 「职业选择」道具：底物用 paper + item_model
# 触发用「consumable 组件 + minecraft:consume_item 进度」（和回城卷轴/无敌卷轴同款已验通路）
#   —— 右击空气时 minecraft.used:<物品> 统计不会触发，所以不能靠统计
# 只在开局与每次重生时发一个；对话框里选定后由 item/class_pick 收掉 —— 每命只能选一次
# consumable 会把道具吃掉，所以 item/class_use 弹完窗会立刻再发一个：
#   关掉对话框不选的人道具还在，选定的人由 class_pick 清掉
give @s paper[item_model="compass",item_name="职业选择",lore=["§7右键打开职业选择界面","§7选定后道具会被收回","§7每次重生只能选一次"],consumable={consume_seconds:0,animation:"none",has_consume_particles:false,on_consume_effects:[],sound:"minecraft:item.book.page_turn"},custom_data={bw_class_pick:true}] 1
scoreboard players enable @s bw.class.pick
