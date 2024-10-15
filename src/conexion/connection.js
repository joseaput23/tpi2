const { Sequelize } = require("sequelize");
const dotenv = require("dotenv");
dotenv.config();

const sequelize = new Sequelize(
  process.env.DATABASE,
  process.env.DBUSER,
  process.env.PASSWORD,

  {
    host: process.env.HOST,
    dialect: "mysql",
    pool: {
      max: 5, // Máximo de conexiones en el grupo
      min: 0, // Mínimo de conexiones en el grupo
      acquire: 30000, // Tiempo máximo, para liberar conexiones inactivas
      idle: 10000, // Tiempo máximo para cerrar conexiones inactivas
    },
  }
);
console.log("DATABASE:", process.env.DATABASE);
console.log("DBUSER:", process.env.DBUSER);
console.log("PASSWORD:", process.env.PASSWORD);
console.log("HOST:", process.env.HOST);

module.exports = sequelize;
