scoreboard players operation @s regeneratable.version = *regeneratable.global regeneratable.version

data modify storage regeneratable:holder_buffer entries_blocks set from entity @s data.entries.blocks
scoreboard players set *regeneratable.current_entry regeneratable.iter 0
execute if score @s regeneratable.entries_amount.blocks matches 1.. run function regeneratable:regenerate/as_holder.loop.blocks

data modify storage regeneratable:holder_buffer entries_loot_tables set from entity @s data.entries.loot_tables
scoreboard players set *regeneratable.current_entry regeneratable.iter 0
execute if score @s regeneratable.entries_amount.loot_tables matches 1.. run function regeneratable:regenerate/as_holder.loop.loot_tables