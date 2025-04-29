scoreboard players add *regeneratable.global regeneratable.version 1
execute unless score *regeneratable.min_message_severity regeneratable.const matches ..0 run return 0

tellraw @a [{"text": "<info> [regeneratable] Global holders' version got updated to "},\
{"score": {"name": "*regeneratable.global", "objective": "regeneratable.version"}},\
"!\nThe holders should start regnerating the entries by now!"]