# Algoritmos de normalización

## Axiomas

- **Reflexividad:** Y ⊂ X ⇒ X → Y 
- **Aumento:** : ∀W : X → Y ⇒ XW → YW
- **Transitividad:** X → Y ∧ Y → Z ⇒ X → Z

Ejemplo de uso:

        Muestre que dado el conjunto de dependencias funcionales
        F = {A → C, BC → E, D → B} es posible inferir que AD → E.

---
        1. Por aumento, como A → C y D → B, se deduce que AD → BC.

        2. Como AD → BC ^ BC → E, por transitividad, AD → E.

        3.  F |= AD → E

## Reglas inferidas de los axiomas

- **Unión:** : X → Y ∧ X → Z ⇒ X → YZ
- **Pseudotransitividad:** ∀W : X → Y ∧ YW → Z ⇒ XW → Z
- **Descomposición:** X → YZ ⇒ X → Y ∧ X → Z

## Clausuras

### Clausura de un conjunto F de dependencias funcionales

F<sup>+</sup> = {X → Y | F |= X → Y}
        
Es el conjunto completo de relaciones que se puede inferir a partir de F.

### Clausura de un conjunto de atributos X en un conjunto de dependencias F

X<sup>+</sup><sub>f</sub> = { A<sub>i</sub> | F |= X → A<sub>i</sub> }

Es el conjunto de atributos A<sub>i</sub> que satisfacen X → A<sub>i</sub> a partir de las inferencias de F.

### Equivalencia

F y G son equivalentes si y sólo si F<sup>+</sup> = G<sup>+</sup>

## Algoritmo para hallar la forma minimal F<sub>m</sub> de F

Dada una relacion R {A,B,C,D,E,F} y un conjunto de relaciones 

_F: {A→BD, B→CD, AC→E_}

**1.- Dejar todos los lados derechos con un atributo único**

_F1 : {A→B, A→D, B→C, B→D, AC→E}_

**2.- Eliminar los atributos redundantes del lado izquierdo**

A→B ^ B→C => A→C

Por ende, de AC→E extraigo que A→E

_F2 : {A→B, A→D, B→C, B→D, A→E}_

**3.- Eliminar las dependencias funcionales redundantes**

Analizo para cada DF X→Y si Y⊂X<sup>+</sup><sub>F2-{X→Y}</sub>

A<sup>+</sup><sub>F2-{A→B}: A, D, E 

A<sup>+</sup><sub>F2-{A→D}: A, B, D, E **(contiene a D, es redundante)**

B<sup>+</sup><sub>F2-{B→C}: B, D

B<sup>+</sup><sub>F2-{B→D}: B, C

A<sup>+</sup><sub>F2-{A→E}: A, B, D

Entonces:

_F<sub>m</sub> : {A→B, B→C, B→D, A→E}_

## Algoritmo de cálculo de claves

Dada una relacion R = {A, B, C, D, E, F, G} 

F = { AB→F, D→A, E→D, D→E, CF→B, B→C }

**1.- Encontrar un cubrimiento minimal de F. Se toma como conjunto de entrada la relación completa**

_F<sub>m</sub> = { AB→F, D→A, E→D, D→E, CF→B, B→C } (ya era minimal)_

_C<sub>a</sub> = {A, B, C, D, E, F, G}_

**2.- Detectar atributos independientes del cálculo A<sub>i</sub> (aquellos que
no están en ninguna DF), eliminar del conjunto, C<sub>a</sub> = C<sub>a</sub> – A<sub>i</sub>  y reservar
para después.**

_A<sub>i</sub> = { G }_

_F<sub>m</sub> = { AB→F, D→A, E→D, D→E, CF→B, B→C }_

_C<sub>a</sub> = { A, B, C, D, E, F }_

**3.- Separar atributos equivalentes. A<sub>e</sub> por un lado y C<sub>a</sub> - A<sub>e</sub> por el otro. Se reemplaza en F<sub>m</sub> el atributo quitado por su equivalente remanente.**

E equivale a D

_A<sub>e</sub> = { D }_

_F<sub>m</sub> = { AB→F, E→A, CF→B, B→C }_

_C<sub>a</sub> = { A, B, C, E, F }_


**4.- Se forma K con todos los elementos que sólo estén del lado izquierdo (implicantes) en el conjunto F<sub>m</sub>. Si K<sup>+</sup><sub>F<sub>m</sub></sub> forma R, K es clave.**

Sólo E cumple con la condición de ser sólo implicante.

_K = { E }_

_F<sub>m</sub> = { AB→F, E→A, CF→B, B→C }_

K<sup>+</sup><sub>F<sub>m</sub></sub> = { A, E } => E no es clave


**5.- Se forma A<sub>id</sub> con los elementos que estén en ambos lados de las dependencias de F<sub>m</sub> (que sean implicantes e implicados).**

**Se prueban combinaciones con K de todos los subconjuntos posibles de A<sub>id</sub>, y se verifica si son clave.**

K = { E }

A<sub>id</sub> = { A, B, C, F }

_F<sub>m</sub> = { AB→F, E→A, CF→B, B→C }_

Primero combinaciones con 1 elemento:

EA<sup>+</sup> : { A, E } 

**EB<sup>+</sup> : { A, B, C, E, F } es clave**

EC<sup>+</sup> : { A, C, E}

EF<sup>+</sup> : { A, E, F}

Ahora combinaciones con 2 elementos (que no contengan a B):

ACE<sup>+</sup> : { A, C, E}

AEF<sup>+</sup> : { A, E, F }

**CEF<sup>+</sup> : { A, B, C, E, F} es clave**

No se pueden hacer ya combinaciones de 3 elementos porque cualquiera incluiria atributos de las claves encontradas.

Claves: { EB, CEF }

**6.- Se agregan a la clave los elementos independientes**

Claves: { EBG, CEFG }

**7.- Se generan nuevas claves con los atributos equivalentes**

Claves: { EBG, DBG, CDFG, CEFG }

Estas son las claves candidatas.