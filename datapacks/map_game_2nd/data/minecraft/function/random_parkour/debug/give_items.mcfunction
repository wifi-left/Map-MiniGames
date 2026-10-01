# 调试：直接发 4 个新道具（内容必须与 loot_table/random_parkour/item.json 保持一致）
give @s potion[potion_contents={custom_effects:[{id:"jump_boost",amplifier:1,duration:200}],custom_color:2293580},item_name="跳跃药水 - 右键饮用（跳跃提升 II / 10 秒）"]
give @s potion[potion_contents={custom_effects:[{id:"speed",amplifier:1,duration:200}],custom_color:8171462},item_name="迅捷药水 - 右键饮用（速度 II / 10 秒）"]
give @s potion[potion_contents={custom_effects:[{id:"levitation",amplifier:0,duration:200}],custom_color:13565951},item_name="漂浮药水 - 右键饮用（漂浮 I / 10 秒）"]
give @s splash_potion[potion_contents={custom_effects:[{id:"slowness",amplifier:1,duration:100}],custom_color:5926017},item_name="缓慢药水 - 右键投掷（缓慢 II / 5 秒）"]
tellraw @s ["§b[DEBUG] 已发放 4 个新道具：3 瓶可饮用 + 1 瓶可投掷"]
