scoreboard players reset @s Banking
tellraw @s [{"text":"                                                                           ","strikethrough":true,"color":"aqua"}]
tellraw @s [{"atlas":"minecraft:items","sprite":"minecraft:item/diamond"},{"bold":true,"color":"aqua","text":" The Diamond Bank "},{"atlas":"minecraft:items","sprite":"minecraft:item/diamond"}]
tellraw @s [{"text":"Welcome, "},{"color":"gold","selector":"@s"}]
tellraw @s [{"text":""}]
tellraw @s [{"text":"Your current balance: "},{"score":{"name":"@s","objective":".balance"},"color":"aqua"},{"text":"💎","color":"aqua"}]
tellraw @s [{"text":""}]
tellraw @s [{"text":"You can ","color":"white"},{"text":"[Withdraw Diamonds]","color":"red","click_event":{"action":"run_command","command":"trigger Banking set 2"}},{"text":" or ","color":"white"},{"text":"[Deposit Diamonds]","color":"green","click_event":{"action":"run_command","command":"trigger Banking set 3"}}]
tellraw @s [{"text":"                                                                           ","strikethrough":true,"color":"aqua"}]