public class Dude {
  float x1;
  float y1;
  float size;
  boolean xDirection;
  boolean yDirection;

  public Dude(float x1, float y1, float size, boolean xDirection, boolean yDirection) {
    this.x1 = x1;
    this.y1 = y1;
    this.size = size;
    this.xDirection = xDirection;
    this.yDirection = yDirection;
  }
  
  public void update() {
    if (xDirection) {
      x1 += 1;
    } else {
      x1 -= 1;
    }
    
    if (yDirection) {
      y1 += 1;
    } else {
      y1 -= 1;
    }
    
    if( x1 >= 350 ) {
      xDirection = !xDirection;
    } else if (x1 <= 50) {
      xDirection = !xDirection;
    }
    
    if( y1 >= 350 ) {
      yDirection = !yDirection;
    } else if (y1 <= 50) {
      yDirection = !yDirection;
    }
    
    circle(x1, y1, size);
  }
}  
