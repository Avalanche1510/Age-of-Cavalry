data merge storage test:name {item_name:""}
data modify storage test:name item_name set string entity @s SelectedItem.components."minecraft:custom_name"
function main:squad/assemble with storage test:name
