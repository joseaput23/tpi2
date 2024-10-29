const { DataTypes } = require("sequelize");
const sequelize = require("../conexion/connection");

const Serie = sequelize.define(
  "Serie",
  {
    id_serie: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true,
    },
    poster: {
      type: DataTypes.STRING(255),
    },
    titulo: {
      type: DataTypes.STRING(255),
      allowNull: false,
    },
    resumen: {
      type: DataTypes.TEXT,
    },
    temporadas: {
      type: DataTypes.INTEGER,
    },
    trailer: {
      type: DataTypes.STRING(255),
    },
    id_categoria: {
      type: DataTypes.INTEGER,
      references: {
        model: "categorias",
        key: "id_categoria",
      },
    },
  },
  {
    tableName: "Series",
    timestamps: false,
  }
);

module.exports = Serie;
