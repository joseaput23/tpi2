const { DataTypes } = require("sequelize");
const sequelize = require("../conexion/connection");

const SeriesReparto = sequelize.define(
  "SeriesReparto",
  {
    id_serie: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      references: {
        model: "Series",
        key: "id_serie",
      },
    },
    id_reparto: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      references: {
        model: "reparto",
        key: "id_reparto",
      },
    },
  },
  {
    tableName: "series_reparto",
    timestamps: false,
  }
);

module.exports = SeriesReparto;
