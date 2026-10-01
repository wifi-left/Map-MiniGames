##
## 召唤“选择器版”名字探测实体（宏：$(sel) 选择器字符串，例如 @a[tag=team.probe.target,limit=1]）
##
## 注意：player 字段只吃档案复合标签、不支持选择器；但 selector 组件会被服务端解析成名字，所以这里用它
##

$summon minecraft:text_display ~ ~ ~ {Tags:["team.probe"],text:{selector:"$(sel)"},text_opacity:0,background:0,billboard:"center"}
