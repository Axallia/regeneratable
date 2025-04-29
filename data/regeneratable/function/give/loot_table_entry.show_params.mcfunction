tellraw @s "\n<info> [regeneratable.give] ->\n[Loot Table Entry Params]"
tellraw @s "    §6loot_table_id§f: namespaced string ID"
tellraw @s "    §9name§f: optionally capitalized string name for the item"
tellraw @s "\n\n§7examples:§f\
\n\n§7function regeneratable:give/loot_table_entry§f\n {loot_table_id:\"§6minecraft:chests/simple_dungeon§f\", name:\"§9Simple Dungeon§f\"}\
\n\n§7function regeneratable:give/loot_table_entry§f\n {loot_table_id:\"§6minecraft:chests/ancient_city_ice_box§f\", name:\"§9Ice Box§f\"}\
\n\n§7function regeneratable:give/loot_table_entry§f\n {loot_table_id:\"§6minecraft:blocks/end_rod§f\", name:\"§9Dildo§f\"}"