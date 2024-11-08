public class Dude {
  private float x1;
  private float y1;
  private float size;
  private int speed;
  private boolean xDirection;
  private boolean yDirection;
  private int red;
  private int green;
  private int blue;
  private String shape;
  
  public Dude(float x1, float y1, float size, int speed, boolean xDirection, boolean yDirection, int red, int green, int blue, String shape) {
    this.x1 = x1;
    this.y1 = y1;
    this.size = size;
    this.speed = speed;
    this.xDirection = xDirection;
    this.yDirection = yDirection;
    this.red = red;
    this.green = green;
    this.blue = blue;
    this.shape = shape;
  }
  
  public void update() {
  
    // direction and speed of a dude
    if (xDirection) {
      x1 += speed + 1;
    } else {
      x1 -= speed + 1;
    }
    
    if (yDirection) {
      y1 += speed + 1;
    } else {
      y1 -= speed + 1;
    }
    
    // bouncing off walls physics 
    if( x1 >= 800 - (size / 2) ) {
      xDirection = !xDirection;
    } else if (x1 <= size / 2) {
      xDirection = !xDirection;
    }
    
    if( y1 >= 600 - (size / 2) ) {
      yDirection = !yDirection;
    } else if (y1 <= size / 2) {
      yDirection = !yDirection;
    }
  }
  
  public void update(Dude otherDude) {
    
    // method for chaser 
    if (x1 < otherDude.x1) {
        x1 += speed - 1;
      } else {
        x1 -= speed - 1;
      }
      
      if (y1 < otherDude.y1) {
        y1 += speed - 1;
      } else {
        y1 -= speed - 1;
      }
    }
  
  public void show() {   
    
    // visual aspect of each dude 
    fill(red, green, blue);
    if (shape.equals("circle")) {
      circle(x1, y1, size);
    } else if (shape.equals("square")) {
      square(x1 - (size / 2), y1 - (size / 2), size);
    } else if (shape.equals("triangle")) {
      triangle(x1 - (size / 2), y1, x1 + (size / 2), y1 - (size / 2), x1 + (size / 2), y1 + (size / 2));
    }
  }  
}  
