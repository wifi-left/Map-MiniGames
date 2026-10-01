##
## 写入邀请记录并通知对方（宏：$(tid) 队伍编号、$(name) 被邀请者名、$(key) 被邀请者 park.uuid、$(from) 邀请者名）
##

$data modify storage minecraft:team invites."$(key)" set value {team:"$(tid)",name:"$(name)",from:"$(from)",expires:$(expires)}

# 登记到邀请键索引：team/sweep 每 10 秒靠它遍历所有邀请做清理
# （接受/拒绝后这里不主动摘除，由清理任务发现“记录已不存在”时顺带剔除；重复登记也无害）
execute unless data storage minecraft:team invite_keys run data modify storage minecraft:team invite_keys set value []
$data modify storage minecraft:team invite_keys append value "$(key)"
$tellraw @a[scores={park.uuid=$(key)}] ["\n§8========================================\n§b$(from) §e邀请你加入他的队伍！§7（60 秒内有效）\n",{"text":"【接受】","color":"green",bold:true,"click_event":{"action":"run_command","command":"/trigger team set 2"},"hover_event":{"action":"show_text","value":"点击加入该队伍"}},{"text":" "},{"text":"【忽略】","color":"gray",bold:true,"click_event":{"action":"run_command","command":"/trigger team set 10"},"hover_event":{"action":"show_text","value":"点击忽略（对方不会收到提示）"}},{"text":" "},{"text":"【拒绝】","color":"red",bold:true,"click_event":{"action":"run_command","command":"/trigger team set 3"},"hover_event":{"action":"show_text","value":"点击拒绝（对方会收到提示）"}},"\n§8========================================\n"]
$execute as @a[scores={park.uuid=$(key)}] run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 1 1
$tellraw @s ["\n§8========================================\n§a已向 §b$(name)§a 发送组队邀请，§7等待对方回应（60 秒后自动失效）。\n§8========================================\n"]
