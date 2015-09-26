class ball {
  float x, y;
  float vx, vy;
  float radius;
  
  ball(){
    x = random (width);
    y = random(height);
    radius = 10;
    vx = 3;
    vy = 2;
  }
  
  void draw() {
    noStroke();
    fill(0);
    ellipse( x, y, radius*2, radius*2);
  }
  void move(){
    x = x+ vx;
    y = y+ vy;
    if( x<radius || x> width - radius){
      vx = -vx;
    }
    if ( y<radius || y> height- radius){
      vy = -vy;
    }
  }
}
class lego {
  float x;
  float y;
  float vy;

  lego(float x){
    this.x= x;
    y = random(height);
    vy = 3;
  }
    
    void draw() {
      noStroke();
      fill(0);
      rect(x, y, 20, 60 );
    }
    
    void move(){
      y = y + vy;
      
      if ( y<= 0 || y >= 440){
        vy= -vy;
    
      }
    }
  }
   
lego a;
  lego b;
  ball c;
  void setup(){
    size(500,500);
    
    a = new lego(20);
    b = new lego(460);
    c = new ball();
  }
  void draw(){
    background(255);
    a.draw();
    a.move();
    b.draw();
    b.move();
    c.draw();
    c.move();
  }

  




