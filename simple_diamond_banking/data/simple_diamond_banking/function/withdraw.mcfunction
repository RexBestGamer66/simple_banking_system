execute if score @p .balance matches 0 run title @p actionbar {"color":"red","text":"Your Balance is too low!"}
execute if score @p .balance matches 0 run return run scoreboard players reset @p Withdraw
give @p diamond 1
scoreboard players remove @p Withdraw 1
scoreboard players remove @p .balance 1
execute if score @p Withdraw matches 1.. run return run function simple_diamond_banking:withdraw
title @p actionbar "Withdrawal successful!"
