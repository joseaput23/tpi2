## Endpoints

### Reparto

#### Crear nuevo Reparto

**Método**: `POST`  
**URL**: `/reparto`

**Descripción**: Crea un nuevo registro de reparto en la base de datos.

**Body**:

```
{
  "nombre_reparto": "string" // Nombre del reparto a crear
}
```

**Respuesta:**

`201` Created: Devuelve el objeto del nuevo reparto creado.
`500` Internal Server Error: Error en el servidor al crear el reparto.
Ejemplo de respuesta exitosa:

```
{
  "id": 1,
  "nombre_reparto": "John Doe"
}
```

#### Actualizar Reparto por ID

**Método**: `PUT`
**URL**: `/reparto/:id`

**Descripción: **Actualiza el nombre de un reparto existente según el ID.

**Parámetros: **

#### id: ID del reparto a actualizar.

```
{
  "nombre_reparto": "string" // Nombre actualizado del reparto
}
```

**Respuesta:**

`200` OK: Devuelve el objeto del reparto actualizado.
`404` Not Found: Reparto no encontrado.
`500` Internal Server Error: Error en el servidor al actualizar el reparto.
Ejemplo de respuesta exitosa:

```
{
  "id": 1,
  "nombre_reparto": "John Doe Updated"
}
```

#### Eliminar Reparto por ID

**Método**: `DELETE`
**URL**: `/reparto/:id`

**Descripción: **Elimina un reparto existente por su ID.

**Parámetros: **

#### id: ID del reparto a eliminar.

**Respuesta:**

`200` OK: Reparto eliminado correctamente.
`404` Not Found: Reparto no encontrado.
`500` Internal Server Error: Error en el servidor al eliminar el reparto.
Ejemplo de respuesta exitosa:

```
{
  "message": "Reparto eliminado correctamente"
}
```

#### Categoría

Crear nueva Categoría
**Método**: `POST`
**URL**: `/categoria`

**Descripción: **Crea una nueva categoría en la base de datos.

```
{
  "nombre_categoria": "string" // Nombre de la categoría a crear
}
```

**Respuesta:**

`201` Created: Devuelve el objeto de la nueva categoría creada.
`500` Internal Server Error: Error en el servidor al crear la categoría.
Ejemplo de respuesta exitosa:

```
{
  "id": 1,
  "nombre_categoria": "Categoría Ejemplo"
}
```

#### Actualizar Categoría por ID

**Método**:` PUT`
**URL**: `/categoria/:id`

**Descripción: **Actualiza el nombre de una categoría existente según el ID.

**Parámetros: **

#### id: ID de la categoría a actualizar.

```
{
  "nombre_categoria": "string" // Nombre actualizado de la categoría
}
```

**Respuesta:**

`200` OK: Devuelve el objeto de la categoría actualizada.
`404` Not Found: Categoría no encontrada.
`500` Internal Server Error: Error en el servidor al actualizar la categoría.
Ejemplo de respuesta exitosa:

```
{
  "id": 1,
  "nombre_categoria": "Categoría Actualizada"
}
```

#### Eliminar Categoría por ID

**Método**: `DELETE`
**URL**: `/categoria/:id`

**Descripción: **Elimina una categoría existente por su ID.

**Parámetros: **

#### id: ID de la categoría a eliminar.

**Respuesta:**

`200` OK: Categoría eliminada correctamente.
`404` Not Found: Categoría no encontrada.
`500` Internal Server Error: Error en el servidor al eliminar la categoría.
Ejemplo de respuesta exitosa:

```
{
  "message": "Categoría eliminada correctamente"
}
```
