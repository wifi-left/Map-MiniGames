execute if score bw.mode board matches 5.. run setblock -237 31 208 lime_bed[facing=east,occupied=true]
execute if score bw.mode board matches 5.. run setblock -236 31 208 lime_bed[facing=east,part=head,occupied=true]
execute if score bw.mode board matches 1..3 run setblock -237 31 208 lime_bed[facing=east,occupied=true]
execute if score bw.mode board matches 1..3 run setblock -236 31 208 lime_bed[facing=east,part=head,occupied=true]

execute if score bw.mode board matches 4 run setblock -248 35 232 lime_bed[facing=south,occupied=true,part=foot]
execute if score bw.mode board matches 4 run setblock -248 35 233 lime_bed[facing=south,occupied=true,part=head]