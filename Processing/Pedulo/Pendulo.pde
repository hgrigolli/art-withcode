import com.hamoid.*;

VideoExport videoExport;
Pendulum p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16;

void setup(){
  size(550,550);
  background(0);
  videoExport = new VideoExport(this, "pendulo.mp4");
  videoExport.setFrameRate(60);
  videoExport.startMovie();
  
  p1 = new Pendulum(150, 45, 20);
  p2 = new Pendulum(150, 75, 20.4);
  p3 = new Pendulum(150, 105, 20.8);
  p4 = new Pendulum(150, 135, 21.2);
  p5 = new Pendulum(150, 165, 21.6);
  p6 = new Pendulum(150, 195, 22);
  p7 = new Pendulum(150, 225, 22.4);
  p8 = new Pendulum(150, 255, 22.8);
  p9 = new Pendulum(150, 285, 23.2);
  p10 = new Pendulum(150, 315, 23.6);
  p11 = new Pendulum(150, 345, 24);
  p12 = new Pendulum(150, 375, 24.4);
  p13 = new Pendulum(150, 405, 24.8);
  p14 = new Pendulum(150, 435, 25.2);
  p15 = new Pendulum(150, 465, 25.6);
  p16 = new Pendulum(150, 495, 26);
  
}

void draw(){
  p1.step();
  p2.step();
  p3.step();
  p4.step();
  p5.step();
  p6.step();
  p7.step();
  p8.step();
  p9.step();
  p10.step();
  p11.step();
  p12.step();
  p13.step();
  p14.step();
  p15.step();
  p16.step();
  
  background(0);
  
  p1.display();
  p2.display();
  p3.display();
  p4.display();
  p5.display();
  p6.display();
  p7.display();
  p8.display();
  p9.display();
  p10.display();
  p11.display();
  p12.display();
  p13.display();
  p14.display();
  p15.display();
  p16.display();
  
  videoExport.saveFrame();
  println(frameCount);
  if ( frameCount == 3600 ){
    videoExport.endMovie();
    exit();
  }
}