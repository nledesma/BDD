## Álgebra Relacional

Considerando los siguientes esquemas de relaciones:

- ARTÍCULOS (nro_art, nombre_art, color);
- PROVEEDORES (nro_prov, apellido);
- PEDIDOS (nro_prov, nro_art, cantidad);

Escribir las sentencias necesarias para responder a las siguientes consultas en Álgebra Relacional y Cálculo
relacional de túplas:

1. Obtener los números de aquellos proveedores que suministran el producto 34.

```
π nro_proveedor σ PEDIDOS.nro_articulo = 34 (PEDIDOS)
```