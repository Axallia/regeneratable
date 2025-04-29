tellraw @s "\n<info> [regeneratable.give] ->\n[Block Entry Params]"
tellraw @s "    §6block_id§f: namespaced string ID"
tellraw @s "    §9name§f: optionally capitalized string name for the item"
tellraw @s "\n\n§7examples:§f\
\n\n§7function regeneratable:give/block_entry§f\n {block_id:\"§6minecraft:cobbled_deepslate§f\", name:\"§9Cobbled Deepslate§f\"}\
\n\n§7function regeneratable:give/block_entry§f\n {block_id:\"§6minecraft:grass_block§f\", name:\"§9Grassy§f\"}\
\n\n§7function regeneratable:give/block_entry§f\n {block_id:\"§6minecraft:end_rod§f\", name:\"§9Dildo§f\"}"