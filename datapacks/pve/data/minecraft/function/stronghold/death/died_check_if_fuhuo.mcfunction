execute unless items entity @s container.* *[custom_data~{stronghold:"health"}] run return fail
clear @s *[custom_data~{stronghold:"health"}] 1
tellraw @s ["\n\u00a7a  你使用了一个绷带，复活了。\n"]
tellraw @a[team=stronghold] [{"selector":"@s"},"\u00a7a 使用了绷带复活了。"]
tag @e[tag=stronghold.flagged] remove stronghold.flagged
tag @s remove stronghold.died.waiting
function minecraft:stronghold/death/rescue
return 1