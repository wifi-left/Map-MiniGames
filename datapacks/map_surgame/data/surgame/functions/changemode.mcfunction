playsound ui.button.click player @s
scoreboard players add sur.zommode state 1
execute if score sur.zommode state matches 2.. run scoreboard players set sur.zommode state 0
execute if score sur.zommode state matches 1 run data modify block -43 182 -116 front_text.messages[1] set value '"\\u00a7c[感染模式]"'
execute if score sur.zommode state matches 0 run data modify block -43 182 -116 front_text.messages[1] set value '"\\u00a7a[竞赛模式]"'