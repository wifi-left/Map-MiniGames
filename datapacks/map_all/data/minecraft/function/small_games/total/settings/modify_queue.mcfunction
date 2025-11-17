## 检测是否禁止设置
playsound ui.button.click player @s
function minecraft:small_games/total/settings/list
# tellraw @s ["\u00a7c该选项仅管理员可以修改。"]
function lobby/quickplay_lists_dialog_show with storage minecraft:temp
