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
Método: GET
Ruta: /reparto
Descripción: Obtiene todos los repartos disponibles.
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

Método: GET
Ruta: /reparto/buscar
Parámetros de consulta: nombre
Descripción: Busca un reparto por su nombre.
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

Método: GET
Ruta: /series
Descripción: Obtiene todas las series disponibles junto con su categoría y géneros.
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

Método: GET
Ruta: /series/buscar
Parámetros de consulta: nombre
Descripción: Busca una serie por su título.
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

Método: GET
URL: http://localhost:3000/reparto
Buscar un reparto:

Método: GET
URL: http://localhost:3000/reparto/buscar?nombre=John
Obtener todas las series:

Método: GET
URL: http://localhost:3000/series
Buscar una serie:

Método: GET
URL: http://localhost:3000/series/buscar?nombre=Serie A
