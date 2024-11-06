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
    fill(255, 0, 0);
    
    if (xDirection) {
      x1 += 3;
    } else {
      x1 -= 3;
    }
    
    if (yDirection) {
      y1 += 3;
    } else {
      y1 -= 3;
    }
    
    if( x1 >= 750 ) {
      xDirection = !xDirection;
    } else if (x1 <= 50) {
      xDirection = !xDirection;
    }
    
    if( y1 >= 750 ) {
      yDirection = !yDirection;
    } else if (y1 <= 50) {
      yDirection = !yDirection;
    }
  }
  
  public void update(Dude otherDude) {
    if (x1 < otherDude.x1) {
        x1 += 1;
      } else {
        x1 -= 1;
      }
      
      if (y1 < otherDude.y1) {
        y1 += 1;
      } else {
        y1 -= 1;
      }
    }
  
  public void show(int red, int green, int blue, String shape) {
   
    fill(red, green, blue);
    if (shape.equals("circle")) {
      circle(x1, y1, size);
    } else if (shape.equals("square")) {
      square(x1, y1, size);
    } else if (shape.equals("triangle")) {

      
    }
    
  }  
}  
