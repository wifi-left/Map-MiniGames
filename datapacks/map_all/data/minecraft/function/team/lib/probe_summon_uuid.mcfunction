##
## 召唤“UUID 版”名字探测实体（宏：$(u0)..$(u3) 为玩家 UUID 四段）
## 文本组件 {player:{id:[I;...]}} 会按 UUID 解析玩家档案，解析后带上 name，可行时最稳
##

$summon minecraft:text_display ~ ~ ~ {Tags:["team.probe"],text:{player:{id:[I;$(u0),$(u1),$(u2),$(u3)]}},text_opacity:0,background:0,billboard:"center"}
