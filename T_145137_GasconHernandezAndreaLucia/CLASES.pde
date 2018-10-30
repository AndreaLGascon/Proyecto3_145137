class peque{
  String nombre;
  int salud;
  int golpe;
  int cara;
  
  peque(String nombre_, int salud_,  int golpe_, int cara_){
  nombre = nombre_;
  salud = salud_;
  golpe = golpe_;
  cara = cara_;
  
  }
  
  void crear(){
    switch(cara){
      
case 0:
pushMatrix();
  image(p1,45,75,270,270);
  popMatrix();
break;

case 1:
  pushMatrix();
   image(p2,90,120,210,210);
  popMatrix();
  break;
  
  case 2:
  pushMatrix();
image(p3,60,130,180,180);
popMatrix();
break;
  
  case 3:
  pushMatrix();
image(p4,100,170,200,200);
popMatrix();
break;

case 4:
pushMatrix();
image(p5,100,145,150,150);
popMatrix();
break;


    }
  }

}

class mounstro extends peque
{
  mounstro(String nombre_, int salud_,  int golpe_, int cara_)
{
  super(nombre_,salud_,golpe_,cara_);
}  
}

class mounstro1 extends peque
{
  mounstro1(String nombre_, int salud_,  int golpe_, int cara_)
{
  super(nombre_,salud_,golpe_,cara_);
}  
}
class mounstro2 extends peque
{
  mounstro2(String nombre_, int salud_,  int golpe_, int cara_)
{
  super(nombre_,salud_,golpe_,cara_);
}  
}
class mounstro3 extends peque
{
  mounstro3(String nombre_, int salud_,  int golpe_, int cara_)
{
  super(nombre_,salud_,golpe_,cara_);
}  
}
class mounstro4 extends peque
{
  mounstro4(String nombre_, int salud_,  int golpe_, int cara_)
{
  super(nombre_,salud_,golpe_,cara_);
}  
}