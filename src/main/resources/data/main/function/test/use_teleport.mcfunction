data merge storage test:name {name:"",things:"神"}
data modify storage test:name name set string entity @s SelectedItem.components."minecraft:custom_name"
function main:test/concat with storage test:name