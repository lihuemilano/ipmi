/*Alumna: Lihue Aylen Milano
 Comision: 3
 Video:
 */
 //declaración de variables globales
PImage Img ; //variable de tipo imagen
int fila = 6 ; //cantidad de cuadrados por fila
int colum = 6 ; //cantidad de cuadrados por columna
float tam = 400.0 / colum ; //guarda el tamaño de cada celda, se asigna dividiendo el alto disponible por la cantidad de columnas
color[][] colores; //los colores con las dimensiones definidas.

//variante de la imagen
void setup () { 
  size (800, 400) ; //define el tamaño del sketch
  Img = loadImage ("FotoIO.jpg") ; //variable para cargar el documento
  colores = new color[colum][fila]; //los colores con las dimensiones definidas.
  
  //Inicializar todo en blanco
  for (int k = 0; k < colum; k++) {
    for (int i = 0; i < fila; i++) {
      colores[k][i] = color(255);
    }
  }
}

void draw () {
  background (255) ; 
  image (Img, 0, 0) ; //funcion donde cargamos y ponemos lugar de la imagen
  stroke(0);       // Color negro para la línea
  strokeWeight(2); // Grosor de la línea
  line (width/2, 0, width/2, height) ; //linea del medio
  for (int k = 0; k < colum; k++ ) { // bucle para las 6 columnas
    for (int i =0; i<fila; i++ ) { // bucle para las 6 filas
      float x = width/2 + k * tam; // Calcula la posición X de cada figura (empieza en la mitad del sketch y suma tam)
      float y = i * tam; // Calcula la posición Y de cada figura
      fill (colores [k][i]); // usa el color correspondiente de "colores"
      figura (x, y, tam) ;//llama la función para dibujar figura
    }
  }
}
float obtesc(float x, float y) {
  float d = dist(x, y, mouseX, mouseY); // distancia al mouse
  float escala = map(d, 0, 200, 0.4, 1.0); // si está muy cerca, achica; si está lejos, normal
  escala = constrain(escala, 0.4, 1.0);   // limita el rango
  return escala;
}

void mousePressed() {
  if (mouseButton == LEFT) { //si se hace click izquierdo se asignan colores aleatorios
    for (int k = 0; k < colum; k++) { //Este bucle se ejecuta 6 veces k: 0, 1, 2, 3, 4, 5
      for (int i = 0; i < fila; i++) {
        colores[k][i] = color(random(255), random(255), random(255));
      }
     }
  }else if (mouseButton == RIGHT) { // si se hace click derecho se reinicia a blanco
    for (int k = 0; k < colum; k++) {
      for (int i = 0; i < fila; i++) {
    // reinicia a blanco
        colores[k][i] = color(255);
      }
    }
  }
    }
