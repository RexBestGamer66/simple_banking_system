scoreboard players reset @s Banking
tellraw @s [{"text":"                                                                           ","strikethrough":true,"color":"aqua"}]
tellraw @s [{"atlas":"minecraft:items","sprite":"minecraft:item/diamond"},{"bold":true,"color":"aqua","text":" The Diamond Bank "},{"atlas":"minecraft:items","sprite":"minecraft:item/diamond"}]
tellraw @s [{"text":""}]
tellraw @s [{"text":"Your current balance: "},{"score":{"name":"@s","objective":".balance"},"color":"aqua"},{"text":"💎","color":"aqua"}]
tellraw @s [{"text":""}]
tellraw @s [{"text":"How many Diamonds do you want to deposit?"}]
tellraw @s [{"text":"Select Amount: "},{"text":"[1💎]","color":"aqua","click_event":{"action":"run_command","command":"trigger Deposit set 1"}},{"text":" "},{"text":"[8💎]","color":"aqua","click_event":{"action":"run_command","command":"trigger Deposit set 8"}},{"text":" "},{"text":"[16💎]","color":"aqua","click_event":{"action":"run_command","command":"trigger Deposit set 16"}},{"text":" "},{"text":"[32💎]","color":"aqua","click_event":{"action":"run_command","command":"trigger Deposit set 32"}},{"text":" "},{"text":"[64💎]","color":"aqua","click_event":{"action":"run_command","command":"trigger Deposit set 64"}},{"text":" "},{"text":"[Custom...]","color":"aqua","click_event":{"action":"suggest_command","command":"/trigger Deposit set "}}]
tellraw @s [{"text":"                                                                           ","strikethrough":true,"color":"aqua"}]
