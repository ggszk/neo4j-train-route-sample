LOAD CSV WITH HEADERS FROM "file:///train_route_node.txt" AS csvLine
CREATE (p:Station { id: toInteger(csvLine.id), name: csvLine.name, category: csvLine.category,
 latitude: toFloat(csvLine.latitude), longitude: toFloat(csvLine.longitude),
 line: csvLine.line}); 
LOAD CSV WITH HEADERS FROM "file:///train_route_relationship.txt" AS csvLine
MATCH (from_s:Station { id: toInteger(csvLine.from_id)}),(to_s:Station { id: toInt(csvLine.to_id)})
CREATE (from_s)-[:CONNECTED_TO { line: csvLine.line, cost: toFloat(csvLine.cost) }]->(to_s);

