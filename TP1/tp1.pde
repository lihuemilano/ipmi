PImage img;

void setup () {
 size (800,400) ; 
  background (227 , 221 , 211 ) ;
   img =loadImage("dataimagen.jpg") ;
}
 
void draw () {
  strokeWeight (2) ;
 line (400,0 , 400,400) ;
 translate (400,0) ;
 noStroke () ;
 fill ( 242, 242 , 235 ) ;
 quad (220,0 , 210,300 , 400,400 , 400,0 ) ;
 fill ( 227, 221, 211) ;
 ellipse (200,100 , 100,400 ) ;
 fill (227, 230, 232 ) ;
 quad (200,0 ,200,30 ,400,90 , 400,60 ) ;
 quad (200,35 ,200,55 ,400,110 , 400,95 ) ;
 fill (204, 204, 206) ;
 quad (200,185 ,200,190 ,400,245 , 400,240 ) ;
 quad (200,195 ,200,200 ,400,255 , 400,250 ) ;
 quad (200,240 , 200,245 , 400,310 , 400,305) ;
 quad (200,250 , 200,270 , 400,335 , 400,315) ;
 quad (200,275 , 200,295 , 400,360 , 400,340) ;
 quad (200,300 , 200,305 , 400,370, 400,365) ;
 quad (200,310 , 200,315 , 400,380, 400,375) ;
 quad (5,240 ,5,245 , 100,270 , 100,265) ;
 quad (5,250 ,5,270 , 100,295 , 100,275) ;
 quad (5,275 ,5,280, 100,305 , 100,300) ;
 //codigos para el pelo
 fill (49, 42, 34) ;
 noStroke () ;
 ellipse (295, 113, 114, 150) ;
 pushMatrix () ;
 rotate(radians(13));
 ellipse (240, 0, 160,100) ;
 rotate (radians(15)) ;
 ellipse (110, 20, 55, 90) ;
 popMatrix () ;
 ellipse (180, 25, 160, 70) ;
 quad (80,215 ,75,240 ,60,280, 220, 210) ;
 //pelos sueltos con borde
 noFill() ;
 stroke (49, 42, 34) ;
 strokeWeight (1) ;
 ellipse (110, 20, 40,40) ;
 ellipse (90, 40, 50,40) ;
 ellipse (90, 40, 60,50) ;
 ellipse (340,120, 40,80) ;
 //codigo remera
 fill (40);
 noStroke () ;
 ellipse (185,278 , 325 , 50) ;
 rect (20,280, 330,200) ;
 ellipse (90,315 , 180,120) ;
 quad (340,270,340,400, 400,400 ,400,310) ;
 rect (0,320, 80,90) ;
 //codigo de estampado de remera 
 fill (237) ;
 quad (100,340 ,110,400 , 270,400 , 250,350) ;
 //codigo de sombreado de remera 
 fill (20) ;
 triangle (30,400 , 30,330 ,40,400) ;
 triangle (320,410 , 330,330 , 310,320) ;
 triangle (130,410 , 140,330 ,145,400) ;
 triangle (210,330, 230,330 , 220,380) ;
 //codigos de la cara
 fill (237,222,213) ; 
 noStroke () ;
 rect (197,80 , 100,90, 35) ;
 rect (89,170, 140,105, 30) ; 
 ellipse (157,267 , 145,55) ;
 ellipse (225,255 , 45,50) ;
 triangle (200,80 , 90,190 , 230,230) ;
 pushMatrix () ;
 rotate(radians(25)) ;
 ellipse (300,90 , 87,150) ;
 fill (237,212,198) ;
 ellipse (217,203, 65,23) ;
 popMatrix () ;                                                         
 quad (120,220, 135,210 , 190 ,260, 180,265) ;
 quad (140,160 , 240,210, 260,190 , 230,90) ;
 triangle (85,260, 125,210, 145,295) ;
 triangle (250,180 , 310,110, 282,180) ;
 ellipse (240,200, 45,20) ;
//codigo de nariz
 fill (232,206,171) ;
 ellipse (230,200 , 20,15) ;
 quad (228,207 , 257,209, 257,192, 230,193) ;
 ellipse (254,200 ,16,17) ;
 triangle (250,207 , 260,205, 255,150) ; 
 fill (237,212,198) ; 
 ellipse (232,197 , 12,10) ;
 ellipse (246,197 , 18,15) ;
//codigo del pelo flequillo
 fill (49, 42, 34) ;
 rect (97,37 , 135,100, 50) ;
 rect (60, 30, 100, 140, 80) ;
 ellipse (309,130 , 30,90) ;
 quad (90,220, 80,260, 120,245, 125,210) ;
 //codigo de las cejas
 quad (185,135 , 240,145, 243,139 ,213, 127) ;
 quad (268,148, 300,147, 300,140, 272,140) ;
 noFill () ;
 stroke (49, 42, 34) ;
 strokeWeight (1) ;
 ellipse (220,80 , 50,50) ;
 ellipse (205,110 , 50,50) ;
 ellipse (150,130 , 50,50) ;
 strokeWeight (8) ;
 line (230,78, 300,87) ;
 noStroke () ;
 fill (30) ;
 rect (85,130, 50, 90, 40) ;
 fill (65) ;
 pushStyle () ;
 ellipse (95,170 , 70,105) ;
 rect (55,110 , 50,80, 30) ;
 noFill () ;
 stroke (190) ;
 strokeWeight (7) ;
 line (85,70, 120,20) ;
 popStyle () ;
 quad (55,125 , 100,120 , 95,75 , 75,60) ;
 quad (90,35 , 115,55 , 180,0 , 140,0 ) ;
 fill (190) ;
 quad (55,125 , 70,120 , 80,90 , 65,95) ;
//codigo para los ojos
 fill (185,145,105) ;
 quad (183,150, 220,144, 230,153, 213,157) ;
 quad (263,165 , 275,153, 290,160 , 285,170) ;
 ellipse (213, 150, 34,13) ;
 ellipse (280, 161, 25,14) ;
 fill (220) ;
 pushStyle () ;
 quad (190,150, 220,145, 230,155, 210,160) ;
 quad (265,165 , 275,155, 290,160 , 285,170) ;
 ellipse (213, 152, 30,13) ;
 ellipse (280, 162, 23,12) ;
//parte de color
 fill (113,142,130) ;
 ellipse (209,151, 18,13) ;
 ellipse (278,161, 16,13) ;
//parte negra
 fill (30) ;
 ellipse (209,150, 10,11) ;
 ellipse (278,160, 9,11) ;
//brillo
 popStyle () ;
 ellipse (216,150, 6,6) ;
 ellipse (285,161, 6,6) ;
 //codigo para la boca
 fill (240,197,197) ;
 quad (210,235, 235,225 , 253,225, 260,236) ;
 //codigo de lentes
 noFill () ;
stroke (117,75,26) ;
strokeWeight (9) ;
 line (150,155, 180,165) ; 
 line (263,175, 250,175) ;
strokeWeight (4) ;
pushStyle () ;
stroke (160,110,56) ;
line (150,152, 180,162) ; 
line (263,172, 250,172) ;
popStyle () ;
pushMatrix () ;
rotate(radians(4)) ;
rect (195,145,65,50, 30,35,60,70) ;
triangle (195,148, 195,158, 202,148) ;
rect (275,148,50,45, 30,10,90,60) ;
triangle (320,149,327,163,330,148) ; 
popMatrix () ;
 image(img, -400, 0, 400, 400);
}
