import processing.sound.*;
SoundFile file;
peque mounstro;
peque mounstro1;
peque mounstro2;
peque mounstro3;
peque mounstro4;
peque pelea1;
peque pelea2;
int x = 100;
int y = 100;
int m = 100;
int i = 100;
float l = 5;
int jugador1;
int jugador2;
int turno = 0;
int vida1 = 100;
int vida2 = 100;
int titulo = 0;
int instruc;
int selec;
int batalla;
int ganador;
PImage perdio;
PImage seleccion;
PImage p1;
PImage p2;
PImage p3;
PImage p4;
PImage p5;
PImage pelea;
PImage poder;
PImage historia;
PImage pantalla1;
Particula poders;
Particula poders2;




void setup(){
  size(600,400);
  background(50,60,123);
   
  file = new SoundFile(this,"circus.mp3");
  file.play();
  file.amp(5);
    
  mounstro = new peque("p1",100,15,0);
 mounstro1 = new peque("p2",100,17,1);
 mounstro2= new peque("p3",100,15,2);
 mounstro3 = new peque("p4",100,13,3);
 mounstro4 = new peque("p5",100,18,4);
  poders = new Particula(150,260,10);
  poders2 = new Particula(450,260,-10);
  
 perdio = loadImage("OVER.jpg");
   seleccion = loadImage("seleccion.jpg");
  p1= loadImage("p1.png");
  p2 = loadImage("p2.png");
  p3 = loadImage("p3.png");
  p4 = loadImage("p4.png");
  p5 = loadImage("p5.png");
  pelea = loadImage("pelea.jpg");
   poder = loadImage("rasen.png");
   historia = loadImage("historia.jpg");
   pantalla1 = loadImage("pantalla1.jpg");

   
}

void draw(){
 image(pantalla1,0,0,600,400);
  switch(titulo){
     
  case 0:
  instruc();
  break;
  
  case 1:
 selec();
  image(seleccion,0,0,600,400);
  break;
  
  case 2:
  selec1();
 image(seleccion,0,0,600,400);
  break;
  
  case 3:
  batalla();
  break;
  
  case 4:
  ganador1();
 image(perdio,0,0,600,400);
   fill(255);
  text("PRESIONA ENTER PARA JUGAR DE NUEVO",160,350);
  break;
  
  case 5:
  ganador2();
  image(perdio,0,0,600,400);
    fill(255);
  text("PRESIONA ENTER PARA JUGAR DE NUEVO",160,350);
  break;
  

  }

}
