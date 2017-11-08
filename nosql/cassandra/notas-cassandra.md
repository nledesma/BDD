### Cassandra

- Es una base de datos NOSQL híbrida entre el tipo wide column y el tipo clave valor.

- Físicamente los datos se organizan por filas.

- Está optimizado para tener una **alta tasa de escritura**.

- Los esquemas en Cassandra son denominados **keyspaces**.

- Cassandra tiene una **arquitectura masterless**. Los keyspaces se encuentran almacenados en forma distribuida dentro de una serie de nodos de un cluster.

- La estructura análoga a la tabla en Cassandra se denomina column family, donde **toda column family tiene una clave primaria formada por una clave de partición, y por columnas de clustering**. Las columnas para Cassandra no son mas que pares clave-valor.