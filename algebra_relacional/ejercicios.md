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

2. Obtener el número y el apellido de aquellos proveedores que suministran el producto 34 o el
producto 12.

```
π nro_proveedor, apellido σ PEDIDOS.nro_articulo = 34 ∨ PEDIDOS.nro_articulo = 12 (PEDIDOS⨝PROVEEDORES)
```

3. Obtener los números de los productos que son tuercas o que son suministrados por el proveedor
número 328.

```
π nro_articulo σ ARTICULOS.nombre_art = 'tuercas' ∨ PEDIDOS.nro_proveedor = 328 (PEDIDOS⨝ARTICULOS)
```