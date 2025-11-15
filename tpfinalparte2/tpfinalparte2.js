//Alan Persico, Lihué Milano
//Com 3
//link youtube: https://youtu.be/o0-m3B8dvqw?si=mGYdMucsEuGxohi6

let imagenes=[];
let estado=0; //pantalla del comienzo
let botonstart;
let botontutorial;
let botonvolver;

let r=0;
let g=255;
let b=0;
let r1=0;
let g1=255;
let b1=0;
//color de las barras de vida

let aNpc; //daño que hace hercules
var tiempo; //tiempo que controla los textos y esperas
let estadoBatalla=0; //controla las fases del combate
let fondo ;
let sonidoBatalla; //variable para sonido
let sonidoReproducido = false;

function preload (){ //se declaran antes las imagenes y sonidos para evitar errores
 fondo=loadImage ('data/fondobatalla.webp'); 
 imagenes [1]=loadImage ('data/hidrafoto.png'); 
 imagenes [2]=loadImage ('data/herculesfoto.png'); 
  sonidoBatalla = loadSound ('data/musicafondo.mp3') ;
  
}



class Player{
constructor(x, y, ancho, alto){ //guarda los datos de posición
this.x=x
this.y=y
this.ancho=ancho
this.alto=alto

}

dibuja(){ //dibujar a la hidra
  image (imagenes[1], this.x, this.y, this.ancho, this.alto);//reemplazar por imagen de hidra 
}

ataca(){
  fill (0,255,0);
 ellipse (this.x, this.y, this.ancho, this.alto); //reemplazar cargando imagen de hidra atacando 
  
}
}

let player=new Player(100, 400, 100, 100);

class Npc{ //dibujo del npc
constructor(x, y, ancho, alto){
this.x=x
this.y=y
this.ancho=ancho
this.alto=alto

}

dibuja(){
  image (imagenes[2], this.x, this.y, this.ancho, this.alto);//reemplazar por imagen de hercules
}

ataca(){
  fill (0,255,0);
 ellipse (this.x, this.y, this.ancho, this.alto); //reemplazar cargando imagen de hercules atacando 
}
}

let npc=new Npc(540, 100, 100, 100);


var vida={ //posición y tamaño de la barra de vida del jugador
  x:100,
  y:300,
  tamL:200,
  tamA:80,
  x1: 540,
  y1: 200}
  
var barra={ //barra de vida del jugador
tamL:150,
tamA:20
}  

var barraNpc={ //barra de vida del npc
tamL:150,
tamA:20
}  

  


function setup() {
createCanvas (640, 480);
imageMode (CENTER);
rectMode (CENTER);
textAlign (CENTER, CENTER);
textSize (20);

botonstart = createButton('START');
  botonstart.position(width/2-60, 300);
  botonstart.size(120, 40);
  botonstart.style('font-size', '16px');
  botonstart.style('background-color', '#04F404');
  botonstart.style('color', 'white');
  botonstart.style('border-radius', '8px');
  botonstart.style('cursor', 'pointer');
  botonstart.mousePressed(() => {
estado = 1; //a donde nos lleva el botón
sonidoReproducido = false; //sonido al entrar con el botón
});


botontutorial = createButton('TUTORIAL');
  botontutorial.position(width/2-60, 400);
  botontutorial.size(120, 40);
  botontutorial.style('font-size', '16px');
  botontutorial.style('background-color', '#04F404');
  botontutorial.style('color', 'white');
 botontutorial.style('border-radius', '8px');
  botontutorial.style('cursor', 'pointer');
botontutorial.mousePressed(() => (estado = 2));


botonvolver = createButton('VOLVER');
  botonvolver.position(width/2-60, 400);
  botonvolver.size(120, 40);
  botonvolver.style('font-size', '16px');
 botonvolver.style('background-color', '#04F404');
  botonvolver.style('color', 'white');
 botonvolver.style('border-radius', '8px');
  botonvolver.style('cursor', 'pointer');
botonvolver.mousePressed(() => (estado = 0));


}



function draw() {


  if (estado === 0) {
    background(0,255,0);
    stroke (0);
    text('HIDRA VS HÉRCULES', width / 2, 170);
    tiempo=0;
    estadoBatalla=0;
    botonstart.show();
    botontutorial.show();
    botonvolver.hide();
    barra.tamL=150;
    barraNpc.tamL=150;
    r=0;
    g=255;
    b=0;
    r1=0;
    g1=255;
    b1=0;
    
   }else if (estado===1){
if (!sonidoReproducido) {
        sonidoBatalla.play();
        sonidoReproducido = true;
    }
     batalla();
     
     botonstart.hide();
     botontutorial.hide();
     botonvolver.hide();
   } else if (estado==2){
        background (94, 172, 98);
       fill (255) ;
       text( 'Usa los números 1, 2, 3 y 4, y elegí tus ataques y derrotar a Hércules', width / 2, height / 2);
     botonstart.hide();
     botontutorial.hide();
     botonvolver.show();
   }else if (estado==3){
      background (255, 0, 0);
     fill (255) ;
     text ('PERDISTE', width / 2, height / 2) ;
     text ('Persico Alan, Milano Lihue, Com 3', width / 2, 360) ;
     botonstart.hide();
     botontutorial.hide();
     botonvolver.show();
   }  else if (estado==4){
      background (0, 255, 0);
     fill (255) ;
     text ('GANASTE', width / 2, height / 2) ;
     text ('Persico Alan, Milano Lihue, Com 3', width / 2, 360) ;
     botonvolver.show();
     botonstart.hide();
     botontutorial.hide();
   } 
}


function batalla (){
  image (fondo, width / 2, height / 2) ;
  player.dibuja(); //se dibujan los personajes
  npc.dibuja();
  
  //barras de vida
  rect (vida.x, vida.y, vida.tamL, vida.tamA);
  rect (vida.x1, vida.y1, vida.tamL, vida.tamA);
  fill (r, g, b);
  rect (vida.x, vida.y, barra.tamL, barra.tamA);
  fill (r1,g1,b1);
  rect (vida.x1, vida.y1, barraNpc.tamL, barraNpc.tamA);
      
  
  if (estadoBatalla==0){
   text ('Es tu turno!', width/2, 400);
   text ('1- Mordida 2-Garras 3- Cabezazo 4-Veneno', width/2, 450);
   aNpc=0;
   tiempo=0;
   } else if (estadoBatalla==1){
   text ('Utilizaste ataque mordida', width/2, 400); 
   tiempo=tiempo+1;
   
   if (tiempo==100){
     estadoBatalla=5;}
 }else if(estadoBatalla==2){
  text ('Utilizaste ataque garras', width/2, 400);
  tiempo=tiempo+1;
  
   if (tiempo==100){
     estadoBatalla=5;}
 }else if(estadoBatalla==3){
  text ('Utilizaste ataque cabezazo', width/2, 400);
  tiempo=tiempo+1;
   
   if (tiempo==100){
     estadoBatalla=5;}
 }else if(estadoBatalla==4){
  text ('Utilizaste ataque veneno', width/2, 400);
  tiempo=tiempo+1;
   
   if (tiempo==100){
     estadoBatalla=5;}
 } 
     
     //Turno NPC
     
 
 print (estadoBatalla);
 
 
  if (estadoBatalla==5){
  text ('Turno de Hércules', 200, 100);
  text ('Presioná la flecha derecha para continuar', 200, 150);
  tiempo=0;
  } else if (estadoBatalla==6){
   text ('Hércules te atacó', 200, 100); 
   tiempo=tiempo+1;
   
   if (tiempo==100){
     estadoBatalla=0;}
 }
  
  
    if (barra.tamL<10){ //si la barra jugador baja de 10
    estado=3; //pantalla de perdiste
   }
   
   if (barraNpc.tamL<10){ //si la barra npc baja de 10
     estado=4; //pantalla de ganaste
   }
   
   if (barra.tamL<30){
     r=255;
     g=0;
     b=0;}
     
     if (barraNpc.tamL<30){
     r1=255;
     g1=0;
     b1=0;}
     //debajo de 30 cambia de color
}

  
    

function keyPressed (){
 if (estadoBatalla==0 && key === "1"){ 
    barraNpc.tamL -= 10; 
    estadoBatalla=1;

  } else if (estadoBatalla==0 && key === "2"){
    barraNpc.tamL -= 30;
    estadoBatalla=2;

  } else if (estadoBatalla==0 && key === "3"){
    barraNpc.tamL -= 5;
    estadoBatalla=3;

  } else if (estadoBatalla==0 && key === "4"){
    barraNpc.tamL -= 40;
    estadoBatalla=4;
//lo que baja cada ataque del jugador y que tecla lo efectua 
  } else if (estadoBatalla==5 && keyCode==RIGHT_ARROW){
    estadoBatalla = 6;
    aNpc = int(random(5, 41));
    barra.tamL -= aNpc;
    if (barra.tamL < 0) barra.tamL = 0; //ataque de daño random del npc
 }
  }
