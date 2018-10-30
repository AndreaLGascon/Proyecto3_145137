void instruc(){
  
  if(keyPressed){
    if(key =='a'){
titulo=1;
  }
  }
}

void selec(){
 
 image(seleccion,600,400);
 if(keyPressed){
  if(key == 'a'){
  pelea1 = mounstro;
  jugador1 = 0;
  titulo=2;  
  }
  else if(key == 's'){
 pelea1 = mounstro1;
 jugador1 = 0;
  titulo=2;  
  }
  else if(key == 'd'){
 pelea1 = mounstro2;
 jugador1 = 0;
  titulo=2;  
  }
  else if(key == 'f'){
  pelea1 = mounstro3;
  jugador1=0;
  titulo=2;  
  }
  else if(key == 'g'){
 pelea1 = mounstro4;
 jugador1 = 0;
  titulo=2;  
  }
  }
 
}

void selec1(){
  
  if(keyPressed){
  if(key == 'q'){
 pelea2 = mounstro;
 jugador2 = 0;
  titulo=3;  
  }
  else if(key == 'w'){
  pelea2 = mounstro1;
  jugador2 = 0;
  titulo=3;  
  }
  else if(key == 'e'){
 pelea2 = mounstro2;
 jugador2 = 0;
  titulo=3;  
  }
  else if(key == 'r'){
 pelea2 = mounstro3;
 jugador2 = 0;
  titulo=3;  
  }
  else if(key == 't'){
 pelea2 = mounstro4;
 jugador2 = 0;
  titulo=3;  
  }
  }
}

void batalla(){
 image(pelea,0,0,600,400);

  fill(255);
  text("JUGADOR 1",85,80);
  text("JUGADOR 2",435,80);
  fill(255,255,0);
  rect(90,40,i,15);
  rect(440,40,m,15);
  fill(255);
  text("presiona s",85,390);
  text("presiona j",435,390);
 
  

  pushMatrix();
  translate(-15,70);
   pelea1.crear();
   popMatrix();
  

  pushMatrix();
  translate(300,70);
   pelea2.crear();
   popMatrix();
 
 switch(turno){
   case 0:
 keyPressed();
   if(key =='s'){
     
     poders.display();
     poders.movimiento();
     if (poders.posx>=450)
     {
     pelea1.salud -= pelea2.golpe;
     vida1 = pelea1.salud;
     m = pelea1.salud;
     turno = 1;
     poders.posx=100;
     }
   
   }
   break;
   case 1:
    keyPressed();
   if(key =='j'){
     poders2.display();
     poders2.movimiento();
     if(poders2.posx<=150)
     {
      pelea2.salud -= pelea1.golpe;
     vida2 = pelea2.salud;
     i = pelea2.salud;
     turno = 0;
     poders2.posx=450;
     }
   
   }
   break;
 
 }
   if(vida1 <= 0 ){
    
     titulo = 4;
   }
   
    if( vida2 <= 0){
   
     titulo = 5;
   }
   
 }
 


void  ganador1(){
  

keyPressed();

if (key == ENTER){
  
  titulo = 1;

}
 pelea1.salud = 100;
 pelea2.salud = 100;
 vida1 = 100;
  m = pelea1.salud;
  i = pelea2.salud;
 turno= 0;
}

void  ganador2(){
  image(perdio,0,0,600,400);
  fill(0);
  //if(jugador1.salud=<0){
   // textSize(15);
   // text("Perdio J1",100,100);
  //}
 // if(jugador2.salud<0){
   // textSize(15);
   //text("Perdio J2",100,100);
 
 
      
  text("PRESIONA ENTER PARA JUGAR DE NUEVO",100,300);


if (key == ENTER){
  
  titulo = 1;

}
 pelea1.salud = 100;
 pelea2.salud = 100;
 i = pelea2.salud;
  m = pelea1.salud;
 vida2 = 100;

}
