function regeneratable:score_fixer/tick.temporal.40

execute unless score *regeneratable.min_message_severity regeneratable.const matches ..1 run return 0
tellraw @s [{"text": "<info> [regeneratable] Score fixer "}, {"text": "enabled", "color":"green"}]