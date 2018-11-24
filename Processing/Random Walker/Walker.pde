class Walker {
  float x;
  float y;
  float c;

  Walker(){
    colorMode(HSB);
    x = width/2;
    y = height/2;
  }
  void display(){
  if(c > 255){
    c = 0;
  } else {
    c++;
  }
  noStroke();
  fill(c,255,255,random(70,90));
  rectMode(CENTER);
  rect(x, y, random(10,30), random(10,30));
}
  void step(){
    float stepx = random(-10, 10);
    float stepy = random(-10, 10);
    
    x += stepx;
    y += stepy;
    
    if( x < 0){
      x = width;
    } else if (x > width){
      x = 0;
    } else if ( y < 0) {
      y = height;
    } else if ( y > height) {
      y = 0;
    }
  }
}