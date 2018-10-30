class Particula
{
  int posx,posy,direccion;
  
  Particula(int posx_, int posy_, int direccion_)
  {
    posx=posx_;
    posy=posy_;
    direccion=direccion_;
  }
  
  void display()
  {
   
    image(poder,posx,posy,70,70);
    
  }
  
  void movimiento()
  {
    posx+=direccion;
  }
  
}