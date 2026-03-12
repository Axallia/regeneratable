execute unless score @s regeneratable.update_order matches -2147483648..2147483647 \
run function regeneratable:new_entry/decide_update_order


execute unless score @s regeneratable.entries_amount.blocks matches 0.. \
store result score @s regeneratable.entries_amount.blocks run data get entity @s data.entries.blocks

execute unless score @s regeneratable.entries_amount.loot_tables matches 0.. \
store result score @s regeneratable.entries_amount.loot_tables run data get entity @s data.entries.loot_tables