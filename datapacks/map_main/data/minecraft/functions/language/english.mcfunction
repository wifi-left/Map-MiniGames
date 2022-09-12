# datapack enable "file/map_en"
# tellraw @a ["\u00a7aLanguage has changed to \u00a7e[English] \u00a7a!"]
# data merge block 0 6 11 {Text2:"\"The hub builder:\""}
# data merge block -3 41 67 {GlowingText: 0b, Color: "black", x: -3, Text4: '{"text":"joined the game."}', y: 41, Text3: '{"text":"begun, you will"}', z: 67, Text2: '{"text":"If the game has"}', id: "minecraft:sign", Text1: '{"text":""}'}
# data merge block -33 5 -15 {GlowingText: 0b, Color: "black", x: -33, Text4: '{"text":"friends ^_^"}', y: 5, Text3: '{"text":"share with your"}', z: -15, Text2: '{"text":"game, please"}', id: "minecraft:sign", Text1: '{"text":"If you love this"}'}
# data merge block 36 8 0 {Text1:"\"Game Mode\""}
# data merge block 25 7 11 {Text2:"\"\\u00a7eTime Limit\""}
# data merge block 25 8 11 {Text2:"\"\\u00a76Start the Game\""}
# data merge block -4 3 41 {GlowingText: 0b, Color: "black", x: -4, Text4: '{"text":"spawnpoint !"}', y: 3, Text3: '{"text":"There isn\'t a"}', z: 41, Text2: '{"text":"Warn:"}', id: "minecraft:sign", Text1: '{"text":""}'}
# fill -5 6 42 -7 6 42 air
# fill -5 5 42 -7 5 42 air
# fill -5 6 42 -7 6 42 oak_wall_sign[facing=north]{Text2:'"Effect Clear"'}
# fill -5 5 42 -7 5 42 oak_wall_sign[facing=north]{Text2:'"Death"'}
# data merge block -5 4 42 {Text2:'"Slow"'}
# data merge block -6 4 42 {Text2:'"Speed"'}
# data merge block -7 4 42 {Text2:'"Jump Boost"'}
# data merge block -5 3 42 {Text2:'"Levitation"'}
# data merge block -6 3 42 {Text2:'"Blindness"'}
# data merge block -7 3 42 {Text2:'"Death"'}
# data merge block -3 42 67 {Text2:"\"\\u00a76Start the Game\""}


# datapack disable "file/map_zh_cn"
tellraw @s ["\u00a7cSorry. 'English' translation didn't support anymore."]