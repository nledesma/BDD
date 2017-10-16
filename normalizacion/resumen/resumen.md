# Formas Normales

## 1ra Forma Normal:

Se dice que un esquema relacional está en la primera forma normal cuando los campos de todas sus relaciones son atómicos y monovaluados.

Ej de un esquema que NO está en la primera forma normal:

<div style="text-align:center">
<img src="images/no-1FN.png" alt="NO-1FN" style="width: 400px;"/>
</div>


Una posible solución:

<div style="text-align:center">
<img src="images/1FN-1.png" alt="FN1-1" style="width: 280px;"/>
<img src="images/1FN-2.png" alt="FN1-2" style="width: 280px;"/>

Se muda el atributo multivaluado a una nueva relación junto con la clave de la relación original.
</div>

## Dependencia funcional

Hay **DF** cuando en una relación, dados dos conjuntos de atributos X e Y, 2 tuplas con igual valor en los atributos del conjunto X necesariamente tienen también igual valor en los atributos del conjunto Y

### Dependencia funcional parcial

Hay **DFP** cuando un atributo depende de un subconjunto del conjunto de la clave primaria, y no de la clave primaria totalmente.

Ej:

<div style="text-align:center">
<img src="images/DFP.png" alt="DFP" style="width: 280px;"/>
</div>

En este caso el atributo _nombre_depto_ depende parcialmente de la clave primaria _(nombre_profesor, asignatura)_, porque sólo depende da la _asignatura_.

Por definición, _asignatura_ es un **atributo primo** de la relación, por formar parte de la clave primaria.

## 2da Forma Normal:

Una relación esta en 2da forma normal cuando sus atributos **no primos** tienen **sólo dependencias funcionales completas con la clave primaria**. 

En resumen, ningún atributo que no forme parte de la clave primaria puede depender parcialmente de la clave primaria.

El ejemplo de la **DFP** anterior se respuelve separando la relacion en las dos siguientes:

<div style="text-align:center">
<img src="images/2FN.png" alt="DFP" style="width: 350px;"/>
</div>


### Descomposiciones

La solución anterior a la _Dependencia funcional parcial_ consiste en una **descomposición** de la relación original en dos relaciones.

Una descomposición se llama **equivalente** cuando:

- **Preservación de las dependencias:** Todas las dependencias funcionales de la relación original se pueden inferir a partir de las relaciones de la descomposición.
- **Preservación de la información:** No hay pérdida de información respecto de la relación original.

## 3ra Forma Normal:

Es cuando un atributo **no primo** (o sea que no forma parte de la PK), depende funcionalmente de otro atributo **no primo**. Esto se denomina como una **dependencia funcional transitiva**.

Ej:

<div style="text-align:center"><img src="images/DFT.png" alt="DFT" style="width: 600px;align:middle;"/>
</div>

En este caso, la clave primaria sería _(nro_factura, nro_item)_.

### Dependencia funcional transitiva

El atributo _nro_producto_ depende funcionalmente de la clave primaria (completa), pero a su vez también _nombre_producto_ depende funcionalmente de _nro_producto_. Esto implica una **dependencia funcional transitiva.**

Para resolver este caso se haría la siguiente descomposición:

<div style="text-align:center">
<img src="images/3FN.png" alt="DFP" style="width: 350px;"/>
</div>

