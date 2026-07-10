
# 进入游戏

$data modify storage statics:settings entry_msg.title set value "$(entry_title)"
$data modify storage statics:settings entry_msg.subtitle set value "$(entry_subtitle)"
$data modify storage statics:settings entry_msg.actionbar set value "$(entry_actionbar)"
$data modify storage statics:settings entry_msg.tellraw set value "$(entry_tellraw)"
# 返回大厅
$data modify storage statics:settings hub_msg.subtitle set value "$(hub_subtitle)"
$data modify storage statics:settings hub_msg.title set value "$(hub_title)"
$data modify storage statics:settings hub_msg.actionbar set value "$(hub_actionbar)"
$data modify storage statics:settings hub_msg.tellraw set value "$(hub_tellraw)"

function minecraft:admin/lobby_title/show