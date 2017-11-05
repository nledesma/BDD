## Ejercitación Mongodb

Bajarse el dataset del campus, ó de:
https://datos.minem.gob.ar/dataset/produccion-de-petroleo-y-gas-por-pozo/archivo/cbfa4d79-ffb3-4096-bab5-eb0dde9a8385

Importarlo a Mongo con:
mongoimport --type csv  listado_pozos.csv --headerline --ignoreBlanks
ó
mongoimport -db test --collection pozos --type csv --file listado_pozos.csv --headerline --ignoreBlanks


Ejercicios:

- Encuentre los pozos que se encuentran a más de 3000 metros de profundidad.

```json
db.listado_pozos.find({profundidad: { $gt: 3000}})
```


- Encuentre los pozos con id de empresa PAE, PTRE ó ILP

```json
db.listado_pozos.find({idempresa: { $in: ["PAE", "PTRE", "ILP"]}})
```

- Encuentre los pozos que están en la provincia de Santa Cruz, y que tuvieron gas inicial de más de 100.000

```json
db.listado_pozos.find({ provincia: "Santa Cruz", gas_inicial:  {$gt: 100000} })
```

- Encuentre los pozos que se encuentran entre 5500 y 6000 metros de profundidad, y retorne sólo el campo "profundidad", ordenados en forma descendente

```json
db.listado_pozos.find({ profundidad: { $gte: 5500, $lte: 6000 }}, {profundidad: 1}).sort({profundidad: -1})
```

- Encuentre los 3 pozos que tienen la mayor cantidad de petroleo indicando su identificador, provincia, empresa a la que pertenece y cantidad de petroleo disponible (filtre aquellos pozos que indican cantidad disponible 0).

```json
db.listado_pozos.createIndex( {petroleo: 1})

db.listado_pozos.find({petroleo: {$ne: 0}}, {idpozo: 1, provincia: 1, idempresa: 1, petroleo: 1}).sort({petroleo: -1}).limit(3)
```

Bonus track:
- Encuentre la cantidad de pozos existentes por provincia.

```json
db.listado_pozos.aggregate({$group: {_id: "$provincia", cantidad: {$sum: 1}}})
```

- Encuentre las 3 cuencas con mayor cantidad de pozos, indicando el nombre de la cuenca y la cantidad de pozos.

```json
db.listado_pozos.aggregate( [{$group: {_id: "$cuenca", cantidad: {$sum: 1} } }, {$sort: {cantidad: -1} }, {$limit: 3}] )
```

- Para cada cuenca encuentre el promedio del cociente petróleo/gas de sus pozos.

```json
db.listado_pozos.aggregate( [{$match: {gas: {$ne: 0}} },{$group: {_id: "$cuenca", cantidad: {$avg: {$divide: ["$petroleo" ,"$gas"]}} } }] )

```