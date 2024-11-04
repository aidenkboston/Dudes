public class Dude {
  float x1;
  float y1;
  float size;

  public Dude(float x1, float y1, float size) {
    this.x1 = x1;
    this.y1 = y1;
    this.size = size;
  }
  
  public void update(float x1, float y1, float size) {
    circle(x1, y1, size);
  }
}  
