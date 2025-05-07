/*lihue milano
com 3
tp 2*/
PImage [] img ; 
PFont semiboldItalic ;
int numPantalla = 0 ;
int contadorTiempo = 0 ;
int boton = 255 ;

void setup () {
  size (640,480) ; 
  
  img = new PImage[4];
  img[0]=loadImage("photodata2.jpg") ;
  img[1]= loadImage("photodata5.png") ;
  img[2]= loadImage("photodata4.png") ;
  img[3]= loadImage("photodata6.png") ;
  
  semiboldItalic = loadFont("BellMTItalic-50.vlw");
  frameRate (10) ; 
  
}
  
  

void draw () {
  background(255);
  image(img[numPantalla], 0, 0, width, height);
  float opacidad= map(contadorTiempo, 0, 40, 0, 255) ;
  opacidad = constrain(opacidad, 0, 255); 
  
  fill(255, opacidad); 
  textFont(semiboldItalic);
  textAlign(LEFT, TOP); 
if (numPantalla == 0) { 
    text("Noise Aquarium fue una presentación de modelos 3D animados del plancton.",  width / 15, height - 170, width - width / 10 , 190);
} else if (numPantalla == 1) {
    text("Lo realizò Victoria Vesna, profesora y artista multimedia norteamericana.", width / 15, height - 170, width - width / 10 , 190);
} else if (numPantalla == 2) {
    text("Con esta presentación nos quiere mostrar la importancia del plancton.", width / 15, height - 170, width - width / 10 , 190);  
} else if (numPantalla == 3) {
fill (0, 255, 0) ;
rect (210, 280, 180, 70) ;
fill (255) ;
text ("reiniciar", 220,290, 0) ;
}

  if (frameCount % 40 == 0 && numPantalla < img.length - 1) {
    numPantalla++ ;
    contadorTiempo= 0;
  }
contadorTiempo++ ;

}

void mouseClicked () {
if (numPantalla == 3) { 
  if (mouseX > 210 && mouseX < 210 + 0 &&
    mouseY > 280 && mouseY < 280 + 0)
  contadorTiempo = 0 ;
  numPantalla = 0 ;
}
}

  
