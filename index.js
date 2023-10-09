// Definir la función constructora Curso
function Curso(nombre, instructor) {
    this.nombre = nombre;
    this.instructor = instructor;
    this.criticas = [];
  }
  
  // Método para agregar críticas al curso
  Curso.prototype.agregarCritica = function (critica, calificacion) {
    this.criticas.push({ critica, calificacion });
  };
  
  // Método para calcular el rating promedio del curso
  Curso.prototype.calcularRatingPromedio = function () {
    if (this.criticas.length === 0) {
      return "No hay críticas todavía";
    }
  
    let sumaCalificaciones = 0;
    for (const critica of this.criticas) {
      sumaCalificaciones += critica.calificacion;
    }
  
    const promedio = sumaCalificaciones / this.criticas.length;
    return promedio.toFixed(2); // Redondear a 2 decimales
  };
  
  // Método para mostrar la información del curso, incluyendo el rating promedio
  Curso.prototype.mostrarInformacion = function () {
    const ratingPromedio = this.calcularRatingPromedio();
    console.log(`Curso: ${this.nombre}`);
    console.log(`Instructor: ${this.instructor}`);
    console.log(`Rating Promedio: ${ratingPromedio}`);
    console.log("Críticas:");
  
    for (const critica of this.criticas) {
      console.log(`- ${critica.critica} (Calificación: ${critica.calificacion})`);
    }
  };
  
  // Crear una instancia de Curso
  const miCurso = new Curso("Diplomatura en Desarrollo Web Frontend(JavaScript)", "Mathias Barbosa");
  
  // Agregar críticas al curso
  miCurso.agregarCritica("Excelente curso. Muy completo.", 8);
  miCurso.agregarCritica("Buen curso. con ejemplos claros.", 5);
  miCurso.agregarCritica("Buen curso, pero podría mejorar en algunos aspectos.", 4);
  miCurso.agregarCritica("No me gustó. Demasiado complicado.", 2);
  
  // Mostrar la información del curso
  miCurso.mostrarInformacion();