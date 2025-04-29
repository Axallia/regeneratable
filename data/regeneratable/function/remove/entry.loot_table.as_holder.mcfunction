$data remove entity @s data.entries.loot_tables[{x:$(x)L,y:$(y)L,z:$(z)L}]
scoreboard players remove @s regeneratable.entries_amount.loot_tables 1
scoreboard players set *regeneratable.rcah_local.removed_entry regeneratable.success 1

$execute if score *regeneratable.min_message_severity regeneratable.const matches ..0 run tellraw @a "<info> [regeneratable.entry_remover] Removed a loot table entry at $(x) $(y) $(z)"