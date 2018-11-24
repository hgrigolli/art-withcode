class Pendulum {
  float t, amp, posx, posy, l;
  float g = 10;
  float c = 0.005;
  
  Pendulum(float tempXpos, float tempYpos, float tempL){
    posx = tempXpos;
    posy = tempYpos;
    l = tempL/10;
    amp = 100;
  }
  
  void display(){
  ellipse(posx + width/2, posy, 25, 25);
  }
  
  void step(){
    posx = exp(-t*c/(2*l))*amp*cos(sqrt(g/l)*t);
    t += 0.06;
  
  }
  
  
  
}