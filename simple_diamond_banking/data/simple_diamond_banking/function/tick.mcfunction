scoreboard players enable @a Banking
scoreboard players enable @a Deposit
scoreboard players enable @a Withdraw

execute as @a[scores={Banking=1}] run function simple_diamond_banking:interface
execute as @a[scores={Banking=2}] run function simple_diamond_banking:interface_withdraw
execute as @a[scores={Banking=3}] run function simple_diamond_banking:interface_deposit

execute as @a[scores={Deposit=1..}] run function simple_diamond_banking:deposit
execute as @a[scores={Withdraw=1..}] run function simple_diamond_banking:withdraw

execute as @e[type=interaction,tag=banker_npc] on target run function simple_diamond_banking:interface
execute as @e[type=interaction,tag=banker_npc] run data remove entity @s interaction
execute as @e[type=villager,tag=banker_npc] at @s if entity @p[distance=..5] run tp @s ~ ~ ~ facing entity @p feet

execute as @e[type=interaction,tag=banker_npc] at @s if data entity @s attack run summon item ~ ~0.5 ~ {Item:{id:"minecraft:villager_spawn_egg",count:1,components:{"minecraft:entity_data":{id:"minecraft:marker",Tags:["banker_spawn"]},"minecraft:item_name":"Spawn Banker Villager"}}}
execute as @e[type=interaction,tag=banker_npc] at @s if data entity @s attack run kill @e[distance=..2,sort=nearest,limit=2]

execute as @e[type=marker,tag=banker_spawn] at @s run summon villager ~ ~ ~ {Tags:["banker_npc"],CustomNameVisible:1b,DeathLootTable:"minecraft:empty",CustomName:{"color":"aqua","text":"Diamond Banker"},NoAI:1b,VillagerData:{level:99,profession:"minecraft:librarian"}}
execute as @e[type=marker,tag=banker_spawn] at @s run summon interaction ~ ~ ~ {Tags:["banker_npc"],width:1f,height:2f,response:1b}
execute as @e[type=marker,tag=banker_spawn] run kill @s

execute as @a unless score @s .balance matches 0.. run scoreboard players set @s .balance 0
