scoreboard objectives add .balance dummy "§b💎"
scoreboard objectives setdisplay below_name .balance
scoreboard objectives modify .balance numberformat styled {"color":"aqua"}
scoreboard objectives add Banking trigger
scoreboard objectives add Deposit trigger
scoreboard objectives add Withdraw trigger
execute as @a unless score @s .balance matches 0.. run scoreboard players set @s .balance 0