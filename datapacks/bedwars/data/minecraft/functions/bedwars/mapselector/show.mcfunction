
execute if score bw.mode board matches 1 run data modify block -299 76 210 front_text.messages[2] set value '"\\u00a7c蘑菇岛"'
execute if score bw.mode board matches 2 run data modify block -299 76 210 front_text.messages[2] set value '"\\u00a7b一枝花"'
execute if score bw.mode board matches ..0 run data modify block -299 76 210 front_text.messages[2] set value '"\\u00a7b一枝花"'
execute if score bw.mode board matches 3 run data modify block -299 76 210 front_text.messages[2] set value '"\\u00a72奇怪的环保太空船"'
execute if score bw.mode board matches 4 run data modify block -299 76 210 front_text.messages[2] set value '"\\u00a7d迷途岛"'
execute if score bw.mode board matches 5.. run data modify block -299 76 210 front_text.messages[2] set value '"\\u00a7f玻璃世界"'