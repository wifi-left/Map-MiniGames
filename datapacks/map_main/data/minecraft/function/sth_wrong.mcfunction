gamemode spectator @s
tellraw @s ["\n\u00a7c你似乎遭遇了一些问题。\n\u00a7e你不应该出现在这里。这极有可能是一个BUG。\n\u00a7a你可以输入\u00a76/trigger hub\u00a7a返回大厅。\n"]
tellraw @s [{text:"[点击此处返回大厅 /trigger hub]",bold:true,color:gold,click_event:{action:"run_command",command:"/trigger hub"}}]
tellraw @s [""]
