import com.hamoid.*;

Walker w;

VideoExport videoExport;

void setup(){
  size(600,600);
  w = new Walker();
  background(0);
  colorMode(HSB);
  
  videoExport = new VideoExport(this, "rw3.mp4");
  videoExport.setFrameRate(120);
  videoExport.startMovie();
}

void draw(){
  w.step();
  w.display();
  videoExport.saveFrame();
  if ( frameCount == 2400 ){
    videoExport.endMovie();
    exit();
  }
}

void keyPressed() {
  if (key == 'q'){
    videoExport.endMovie();
    exit();
  }
}