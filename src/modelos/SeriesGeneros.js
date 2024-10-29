const { DataTypes } = require("sequelize");
const sequelize = require("../conexion/connection");

const SeriesGeneros = sequelize.define(
  "SeriesGeneros",
  {
    id_serie: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      references: {
        model: "Series",
        key: "id_serie",
      },
    },
    id_genero: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      references: {
        model: "generos",
        key: "id_genero",
      },
    },
  },
  {
    tableName: "series_generos",
    timestamps: false,
  }
);

module.exports = SeriesGeneros;
