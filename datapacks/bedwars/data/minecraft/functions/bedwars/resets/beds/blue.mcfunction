execute if score bw.mode board matches 5.. run setblock -303 31 276 blue_bed[facing=south,occupied=true]
execute if score bw.mode board matches 5.. run setblock -303 31 277 blue_bed[facing=south,part=head,occupied=true]
execute if score bw.mode board matches 1..3 run setblock -303 31 276 blue_bed[facing=south,occupied=true]
execute if score bw.mode board matches 1..3 run setblock -303 31 277 blue_bed[facing=south,part=head,occupied=true]

execute if score bw.mode board matches 4 run setblock -326 35 268 blue_bed[facing=west,occupied=true,part=foot]
execute if score bw.mode board matches 4 run setblock -327 35 268 blue_bed[facing=west,occupied=true,part=head]