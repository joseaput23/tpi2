const { DataTypes } = require("sequelize");
const sequelize = require("../conexion/connection");

const Reparto = sequelize.define(
  "Reparto",
  {
    id_reparto: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true,
    },
    nombre_reparto: {
      type: DataTypes.STRING(255),
      allowNull: false,
    },
  },
  {
    tableName: "reparto",
    timestamps: false,
  }
);

module.exports = Reparto;
