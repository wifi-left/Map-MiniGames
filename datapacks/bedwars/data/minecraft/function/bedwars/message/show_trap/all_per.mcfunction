execute if score bw.traptype.1 bw.board matches 1 run return run data modify storage temp bw.trap.name set value '挖掘疲劳陷阱'
execute if score bw.traptype.1 bw.board matches 2 run return run data modify storage temp bw.trap.name set value '缓慢失明陷阱'
execute if score bw.traptype.1 bw.board matches 3 run return run data modify storage temp bw.trap.name set value '显身陷阱'
data modify storage temp bw.trap.name set value '\u00a77无'