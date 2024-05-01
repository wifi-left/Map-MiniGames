##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @a ["\u00a76 [SYS] 自检完成。结果："]
execute if score syserror board matches 1.. run tellraw @a [" \u00a7e[!] \u00a7c发现 ",{"score":{"objective": "board","name": "syserror"},"color":"yellow"},"\u00a7c 个错误。"]
execute unless score syserror board matches 1.. run tellraw @a [" \u00a7a[OK] \u00a76未发现错误。若有问题请向作者反馈！"]
say §6 [SYS] 自检完毕

execute as @a run function selfcheck/checkpack
