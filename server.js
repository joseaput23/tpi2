const express = require("express");
const app = express();

const { Op } = require("sequelize");

//*******

const sequelize = require("./src/conexion/connection");
const Categoria = require("./src/modelos/Categorias");
const Serie = require("./src/modelos/Series");
const Genero = require("./src/modelos/Generos");
const Reparto = require("./src/modelos/Reparto");
const SeriesReparto = require("./src/modelos/SeriesReparto");
const SeriesGeneros = require("./src/modelos/SeriesGeneros");

// Relaciones
Serie.belongsTo(Categoria, { foreignKey: "id_categoria", as: "categoria" });
Categoria.hasMany(Serie, { foreignKey: "id_categoria", as: "series" });

Serie.belongsToMany(Genero, {
  through: SeriesGeneros,
  foreignKey: "id_serie",
  as: "generos",
});
Genero.belongsToMany(Serie, {
  through: SeriesGeneros,
  foreignKey: "id_genero",
  as: "series",
});

Serie.belongsToMany(Reparto, {
  through: SeriesReparto,
  foreignKey: "id_serie",
  as: "reparto",
});
Reparto.belongsToMany(Serie, {
  through: SeriesReparto,
  foreignKey: "id_reparto",
  as: "series",
});

// ... Resto de las relaciones ...

module.exports = {
  Categoria,
  Serie,
  Genero,
  Reparto,
  SeriesGeneros,
  SeriesReparto,
};

//******/

//const PORT = process.env.PORT || 3000;

app.use(express.json());

app.use(async (req, res, next) => {
  try {
    await sequelize.authenticate();
    await Categoria.sync();
    await Genero.sync();
    await Reparto.sync();
    await Serie.sync();
    await SeriesGeneros.sync();
    await SeriesReparto.sync();
    next();
  } catch (error) {
    res
      .status(500)
      .json({ error: "Error en el servidor", description: error.message });
  }
});

//07-10-2024
app.get("/reparto", async (req, res) => {
  try {
    // Realizamos la consulta
    const reparto = await Reparto.findAll();

    // Si no se encuentran resultados
    if (reparto.length === 0) {
      return res.status(404).json({ message: "No se encontró ningún reparto" });
    }

    // Retornamos los resultados en JSON
    res.json(reparto);
  } catch (error) {
    // Manejo de errores
    res.status(500).json({
      message: "Error en el servidor",
      description: error.message,
    });
  }
});
// Endpoint para busqueda por filtro definido

app.get("/reparto/buscar", async (req, res) => {
  const { nombre } = req.query;

  try {
    const reparto = await Reparto.findAll({
      where: {
        nombre_reparto: {
          [Op.like]: `%${nombre}%`,
        },
      },
    });

    if (reparto.length === 0) {
      return res
        .status(404)
        .json({ message: "No se encontró ningún reparto con ese nombre" });
    }

    res.json(reparto);
  } catch (error) {
    res.status(500).json({
      message: "Error en el servidor",
      description: error.message,
    });
  }
});

app.get("/series", async (req, res) => {
  try {
    // Realizamos la consulta
    const series = await Serie.findAll({
      include: [
        { model: Categoria, as: "categoria" },
        { model: Genero, as: "generos" },
      ],
    });

    if (series.length === 0) {
      return res.status(404).json({ message: "No se encontró ninguna serie" });
    }

    res.json(series);
  } catch (error) {
    res.status(500).json({
      message: "Error en el servidor",
      description: error.message,
    });
  }
});
app.get("/series/buscar", async (req, res) => {
  const { nombre } = req.query;

  try {
    const series = await Serie.findAll({
      where: {
        titulo: {
          [Op.like]: `%${nombre}%`,
        },
      },
      include: [
        { model: Categoria, as: "categoria" },
        { model: Genero, as: "generos" },
      ],
    });

    if (series.length === 0) {
      return res
        .status(404)
        .json({ message: "No se encontró ninguna serie con ese nombre" });
    }
    //-------19-10-2024
    // POST - Crear nuevo Reparto
    app.post("/reparto", async (req, res) => {
      const { nombre_reparto } = req.body;

      try {
        const nuevoReparto = await Reparto.create({ nombre_reparto });
        res.status(201).json(nuevoReparto);
      } catch (error) {
        res.status(500).json({
          message: "Error en el servidor al crear el reparto",
          description: error.message,
        });
      }
    });

    // PUT - Actualizar Reparto por ID
    app.put("/reparto/:id", async (req, res) => {
      const { id } = req.params;
      const { nombre_reparto } = req.body;
      console.log(nombre_reparto);
      try {
        const reparto = await Reparto.findByPk(id);
        if (!reparto) {
          return res.status(404).json({ message: "Reparto no encontrado" });
        }

        reparto.nombre_reparto = nombre_reparto;
        await reparto.save();
        res.json(reparto);
      } catch (error) {
        res.status(500).json({
          message: "Error en el servidor al actualizar el reparto",
          description: error.message,
        });
      }
    });

    // DELETE - Eliminar Reparto por ID
    app.delete("/reparto/:id", async (req, res) => {
      const { id } = req.params;
      console.log(id);
      try {
        const reparto = await Reparto.findByPk(id);
        if (!reparto) {
          return res.status(404).json({ message: "Reparto no encontrado" });
        }

        await reparto.destroy();
        res.json({ message: "Reparto eliminado correctamente" });
      } catch (error) {
        res.status(500).json({
          message: "Error en el servidor al eliminar el reparto",
          description: error.message,
        });
      }
    });

    // POST - Crear nueva Categoria
    app.post("/categoria", async (req, res) => {
      const { nombre_categoria } = req.body;

      try {
        const nuevaCategoria = await Categoria.create({ nombre_categoria });
        res.status(201).json(nuevaCategoria);
      } catch (error) {
        res.status(500).json({
          message: "Error en el servidor al crear la categoría",
          description: error.message,
        });
      }
    });

    // PUT - Actualizar Categoria por ID
    app.put("/categoria/:id", async (req, res) => {
      const { id } = req.params;
      const { nombre_categoria } = req.body;

      try {
        const categoria = await Categoria.findByPk(id);
        if (!categoria) {
          return res.status(404).json({ message: "Categoría no encontrada" });
        }

        categoria.nombre_categoria = nombre_categoria;
        await categoria.save();
        res.json(categoria);
      } catch (error) {
        res.status(500).json({
          message: "Error en el servidor al actualizar la categoría",
          description: error.message,
        });
      }
    });

    // DELETE - Eliminar Categoria por ID
    app.delete("/categoria/:id", async (req, res) => {
      const { id } = req.params;

      try {
        const categoria = await Categoria.findByPk(id);
        if (!categoria) {
          return res.status(404).json({ message: "Categoría no encontrada" });
        }

        await categoria.destroy();
        res.json({ message: "Categoría eliminada correctamente" });
      } catch (error) {
        res.status(500).json({
          message: "Error en el servidor al eliminar la categoría",
          description: error.message,
        });
      }
    });

    //-----------------
    res.json(series);
  } catch (error) {
    res.status(500).json({
      message: "Error en el servidor",
      description: error.message,
    });
  }
});

///--------------------------------------------servidor en escucha------
const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Servidor escuchando en el puerto ${PORT}`);
});
