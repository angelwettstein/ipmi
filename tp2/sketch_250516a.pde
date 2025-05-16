int posY2=-200;
int posY=480;
int posX = -200;
int posX2=640;
int posX3=-100;
int posX4=640;
int posX6=-200;
int velocidad =4;
int velocidad2 =3;
int estado = 0;
int[] tiempos = {180, 360, 540, 720, 900, 1080,1260,1440,1620,1800,1980};
int tiempoInicio = 0;
PImage pantalla1;
PImage pantalla2;
PImage pantalla3;
PImage pantalla4;                        
PImage pantalla5;
PImage pantalla6;
PImage pantalla7;                        
PImage pantalla8;
PImage pantalla9;
int tamTexto2= 20;
int tamTexto = 50;
int tamTexto3 = 1;
int tamTexto4 = 1;
int tamTexto5 = 1;
PFont font;
PFont font2;

void setup(){
  size(640,480);
  frameRate(60);
  pantalla1 = loadImage("angel1.jpeg");
  pantalla2=loadImage("angel2.jpeg");
  pantalla3=loadImage("angel3.jpeg");
  pantalla4=loadImage("angel5.jpeg");
  pantalla5=loadImage("angel7.jpeg");
  pantalla6=loadImage("angel8.jpeg");
  pantalla7=loadImage("angel9.jpeg");
  pantalla8=loadImage("angel10.jpeg");
  pantalla9=loadImage("angel11.jpeg");
  textAlign(CENTER, CENTER);
  font= loadFont("angelos1.vlw");
  font2= loadFont("fuente2.vlw");
  textFont(font);
  textFont(font2);
  
}

void draw(){
  int tiempoActual = frameCount - tiempoInicio;

if (tiempoActual < tiempos[0]) {
  estado = 0;
} else if (tiempoActual < tiempos[1]) {
  estado = 1;
} else if (tiempoActual < tiempos[2]) {
  estado = 2;
} else if (tiempoActual < tiempos[3]) {
  estado = 3;
} else if (tiempoActual < tiempos[4]) {
  estado = 4;
} else if (tiempoActual < tiempos[5]) {
  estado = 5;
} else if (tiempoActual < tiempos[6]) {
  estado = 6;
} else if (tiempoActual < tiempos[7]) {
  estado = 7;
} else if (tiempoActual < tiempos[8]) {
  estado = 8;
} else {
  estado = 9;
} 

  if (estado == 0) {
    pantalla1();
  } else if (estado == 1) {
    pantalla2();
  } else if (estado == 2) {
    pantalla3();
  } else if (estado == 3) {
    pantalla4();
  } else if (estado == 4) {
    pantalla5();
  } else if (estado == 5) {
    pantalla6();
  } else if (estado == 6) {
    pantalla7();
  } else if (estado == 7) {
    pantalla8();
  } else if (estado == 8) {
    pantalla9();
}    
}  
void pantalla1(){
    image(pantalla1, 0, 0,640,480);
    fill(225,13,250);
    textFont(font2);
    textSize(70);
    text("Libro",posX,150);
    text("El",posX,200);
    text("Principito",posX,250);
    posX += velocidad;
    if(tamTexto <= 50){
  tamTexto += 1;
}

}
void pantalla2(){
  image(pantalla2, 0, 0,640,480);
  fill(23,250,85);
  textFont(font);
  textSize(tamTexto2);
  text("El principito es un cuento",width/2,210);
  text("escrito por Antoine de Saint-Exupery que nos",width/2,240);
  text("invita a reflexionar sobre la vida,",width/2,270);
  text("la amistad y el amor.",width/2,300);
  
  if(tamTexto2 <=30){
    tamTexto2 += 1;     
   }
}
void pantalla3(){
  image(pantalla3, 0, 0,640,480);
  fill(0);
  textFont(font);
     textSize(25);
     text("El principito es un joven que vive",width/2,posY-100);
     text("en un planeta lejano y decide emprender un viaje",width/2,posY-80);
     text(" para descubrir el universo y encontrar amigos.",width/2,posY-60);
     text("Conocera una variedad de personajes ",width/2,posY-40);
     text("que le enseñaran lecciones sobre la vida.",width/2,posY-20);
     if(tamTexto <=50){
       tamTexto = tamTexto + 1;     
     }
     if(posY > 430){
       posY -= velocidad;     
     }
   }
void pantalla4(){
  image(pantalla4, 0, 0,640,480);
  fill(239,5,252);
  textFont(font);
  textSize(25);
  text("Los personajes del principito son:",posX2,30,width/2,200);
  text("unicos y simbolicos. Cada uno representa una faceta de la humanidad y nos enseña sobre la importancia de las relaciones y conexiones con los demas",posX2,150,width/2,300);
  if(posX2 > 160){
    posX2 -= velocidad;
  }
}
void pantalla5(){
  image(pantalla5, 0, 0,640,480);
  fill(255);
  textFont(font);
  textSize(25);
  text("El principito nos enseña sobre la importancia de la amistad,",posX6,30,300,200);
  text("y el amor como tambien la conexion con los demas y la importancia de ver mas alla de las aparciencias.",posX6,150,300,300);
  if(posX6 < width/2){
  posX6 += velocidad;
  }
  if(tamTexto <= 50){
      tamTexto += 1;
}
}
  
void pantalla6(){
  image(pantalla6, 0, 0,640,480);
  fill(255);
  textFont(font);
     textSize(30);
     text("Lo esencial es invisible a los ojos. El principito",80,posY2,600,300);
     if(posY2 < 50){
       posY2 += velocidad;     
     }
   }
   
void pantalla7(){
  image(pantalla7, 0, 0,640,480);
  fill(255);
  textFont(font);
     textSize(30);
     text("Es un libro que nos invita a reflexionar",posX3,300);
     text("sobre nuestras propias vidas y nuestras relaciones con los demas.",posX3,320);
     text("Nos recuerda la importancia de la empatia, la compasion",posX3,345);
     text(" y la conexion con los demas.",posX3,365);
     posX3 += velocidad2;
     textFont(font2);
     textSize(tamTexto3);
     text("CUENTO:", width/2, 20);
     if (tamTexto3 <= 50) {
       tamTexto3 +=1;
}
     textSize(15);
     text("una historia unica)",width/2,50);
     if(tamTexto <=50){
       tamTexto = tamTexto + 1;     
     }
   }

void pantalla8(){
  image(pantalla8, 0, 0,640,480);
  fill(255);
  textFont(font);
  textSize(20);
     text("para sobrevivir contra los animales animatrónicos",250,300);
     text("del restaurante,que, poseídos por las almas",250,320);
     text("de los niños asesinados en la misma pizzería,",250,345);
     text(" buscan matar al guardia durante la madrugada.",250,365);
     textFont(font2);
     textSize(tamTexto4);
     text("LA ROSA", width/2, 20);
     if (tamTexto4 <= 50) {
       tamTexto4 +=1;
}
  
  
  
  
}
void pantalla9(){
  image(pantalla9, 0, 0,640,480);
  fill(255);
  textFont(font);
  textSize(20);
     text("El zorro es un personaje clave en la historia del principito",posX4,300);
     text("A traves de su amistad, el zorro le enseña al principito sobre",posX4,320);
     text("la importancia de las relaciones y la conexion ",posX4,345);
     text(" con los demas.",posX4,365);
     if(posX4 > width/2){
       posX4 -= velocidad;
     }
     textFont(font2);
     textSize(tamTexto5);
     text("EL ZORRO Y EL", width/2, 20);
     if (tamTexto5 <= 50) {
       tamTexto5 +=1;
}
  
}

void keyPressed(){
  if (key == 'w'){
    tiempoInicio = frameCount;
    tamTexto = 50; 
    tamTexto2 =1;
    tamTexto3 =1;
    tamTexto4 =1;
    tamTexto5 =1;
    posX = -200;
    posX2= 640;
    posX3=-100;
    posX4 =640;
    posX6 =-200;
    posY2=-200;
    posY=480;
  }
}
