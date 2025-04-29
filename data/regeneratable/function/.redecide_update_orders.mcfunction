execute as @e[type=marker, tag=regeneratable.holder] run function regeneratable:new_entry/decide_update_order
execute store result score *regeneratable.ruo_local.holders_amount regeneratable.iter if entity @e[type=marker, tag=regeneratable.holder]
execute unless score *regeneratable.min_message_severity regeneratable.const matches ..0 run return 0

tellraw @a [{"text": "<info> [regeneratable] All loaded holders' update orders just got re-rolled!\n("},\
{"score": {"name": "*regeneratable.ruo_local.holders_amount", "objective": "regeneratable.iter"}},\
" entities affected)"]