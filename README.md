# API de Series y Reparto

Este proyecto es una API REST construida con **Node.js** y **Express**, que permite gestionar y consultar información sobre series de televisión, categorías, géneros y reparto. Utiliza **Sequelize** como ORM para interactuar con una base de datos SQL.

## dependencias a instalar

- Node.js
- Express
- Nodemon
- Dotenv
- Sequelize
- MySQL 2

## Instalación

1. Clona este repositorio:
   ```bash
   git clone <URL_DEL_REPOSITORIO>
   cd <NOMBRE_DEL_REPOSITORIO>
   Instala las dependencias:
   ```

bash
Copiar código
npm install
Configura tu conexión a la base de datos en el archivo ./src/conexion/connection.js.

Asegúrate de tener configuradas las tablas necesarias en tu base de datos.

### Uso

Para ejecutar el servidor, usa el siguiente comando:

node <NOMBRE_DEL_ARCHIVO>.js
Por defecto, el servidor se ejecutará en el puerto 3000. Puedes cambiar esto configurando la variable de entorno PORT.

## Endpoints

Obtener Reparto
**Método**: GET
Ruta: /reparto
**Descripción: **Obtiene todos los repartos disponibles.
Ejemplo de respuesta:

```
[
  {
    "id": 1,
    "nombre_reparto": "John Doe"
  },
  {
    "id": 2,
    "nombre_reparto": "Jane Smith"
  }
]
```

## Buscar Reparto

**Método**: GET
Ruta: /reparto/buscar
Parámetros de consulta: nombre
**Descripción: **Busca un reparto por su nombre.
Ejemplo de consulta:

GET /reparto/buscar?nombre=John
Ejemplo de respuesta:

```
[
  {
    "id": 1,
    "nombre_reparto": "John Doe"
  }
]
```

## Obtener Series

**Método**: GET
Ruta: /series
**Descripción: **Obtiene todas las series disponibles junto con su categoría y géneros.
Ejemplo de respuesta:

```
[
  {
    "id": 1,
    "titulo": "Serie A",
    "categoria": { "id": 1, "nombre_categoria": "Drama" },
    "generos": [{ "id": 1, "nombre_genero": "Acción" }]
  }
]
```

## Buscar Series

**Método**: GET
Ruta: /series/buscar
Parámetros de consulta: nombre
**Descripción: **Busca una serie por su título.
Ejemplo de consulta:

GET /series/buscar?nombre=Serie A
Ejemplo de respuesta:

```
[
  {
    "id": 1,
    "titulo": "Serie A",
    "categoria": { "id": 1, "nombre_categoria": "Drama" },
    "generos": [{ "id": 1, "nombre_genero": "Acción" }]
  }
]
```

### Ejemplo de Consultas en Postman

Obtener todos los repartos:

**Método**: GET
URL: http://localhost:3000/reparto
Buscar un reparto:

**Método**: GET
URL: http://localhost:3000/reparto/buscar?nombre=John
Obtener todas las series:

**Método**: GET
URL: http://localhost:3000/series
Buscar una serie:

**Método**: GET
URL: http://localhost:3000/series/buscar?nombre=Serie A

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
