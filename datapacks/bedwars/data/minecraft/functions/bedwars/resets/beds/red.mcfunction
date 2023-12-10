execute if score bw.mode board matches 5.. run setblock -305 31 142 red_bed[facing=north,occupied=true]
execute if score bw.mode board matches 5.. run setblock -305 31 141 red_bed[facing=north,part=head,occupied=true]
execute if score bw.mode board matches 1..3 run setblock -305 31 142 red_bed[facing=north,occupied=true]
execute if score bw.mode board matches 1..3 run setblock -305 31 141 red_bed[facing=north,part=head,occupied=true]

execute if score bw.mode board matches 4 run setblock -283 35 154 red_bed[facing=east,part=head,occupied=true]
execute if score bw.mode board matches 4 run setblock -284 35 154 red_bed[facing=east,part=foot,occupied=true]