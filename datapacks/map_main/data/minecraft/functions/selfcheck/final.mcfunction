tellraw @a ["\u00a76 [SYS] 自检完成。结果："]
execute if score syserror board matches 1.. run tellraw @a [" \u00a7e[!] \u00a7c发现 ",{"score":{"objective": "board","name": "syserror"},"color":"yellow"},"\u00a7c 个错误。"]
execute unless score syserror board matches 1.. run tellraw @a [" \u00a7a[OK] \u00a76未发现错误。若有问题请向作者反馈！"]
say §6 [SYS] 自检完毕