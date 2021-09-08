execute store result score $abcl.temp3 abcl.math run time query gametime
execute as @e[tag=abcl.scheduled] if score @s abcl.scheduled = $abcl.temp3 abcl.math run function abcl:message/end