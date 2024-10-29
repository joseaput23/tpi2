const { DataTypes } = require("sequelize");
const sequelize = require("../conexion/connection");

const Categoria = sequelize.define(
  "Categorias",
  {
    id_categoria: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true,
    },
    nombre_categoria: {
      type: DataTypes.STRING(100),
      allowNull: false,
    },
  },
  {
    tableName: "categorias",
    timestamps: false,
  }
);

module.exports = Categoria;
