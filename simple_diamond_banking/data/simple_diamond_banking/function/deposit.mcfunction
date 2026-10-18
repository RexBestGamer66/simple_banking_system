execute unless items entity @p container.* diamond run title @p actionbar {"color":"red","text":"You don't have any Diamonds to deposit!"}
execute unless items entity @p container.* diamond run return run scoreboard players reset @p Deposit
clear @p diamond 1
scoreboard players remove @p Deposit 1
scoreboard players add @p .balance 1
execute if score @p Deposit matches 1.. run return run function simple_diamond_banking:deposit
title @p actionbar "Deposit successful!"