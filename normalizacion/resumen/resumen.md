# Formas Normales

### 1ra Forma Normal:

Se dice que un esquema relacional está en la primera forma normal cuando los campos de todas sus relaciones son atómicos y monovaluados.

Ej de un esquema que NO está en la primera forma normal:

<img src="no-1FN.png" alt="NO-1FN" style="width: 400px;"/>


Una posible solución:

<img src="1FN-1.png" alt="FN1-1" style="width: 250px;"/>
<img src="1FN-2.png" alt="FN1-2" style="width: 280px;"/>

Se muda el atributo multivaluado a una nueva relación junto con la clave de la relación original.

### Dependencia funcional

Hay **DF** cuando en una relación, dados dos conjuntos de atributos X e Y, 2 tuplas con igual valor en los atributos de X deben tener igual valor en el conjunto de atributos Y

### Dependencia funcional parcial

Hay **DFP** cuando un atributo depende de un subconjunto del conjunto de la clave primaria, y no de la clave primaria totalmente.

Ej:

<img src="DFP.png" alt="DFP" style="width: 250px;"/>

En este caso el atributo _nombre_depto_ depende parcialmente de la clave primaria _(nombre_profesor, asignatura)_, porque sólo depende da la _asignatura_.

Por definición, _asignatura_ es un **atributo primo** de la relación, por formar parte de la clave primaria.

### 2da Forma Normal:

Una relación esta en 2da forma normal cuando sus atributos **no primos** tienen **sólo dependencias funcionales completas con la clave primaria**. 

En resumen, ningún atributo que no forme parte de la clave primaria puede depender parcialmente de la clave primaria.

### 3ra Forma Normal