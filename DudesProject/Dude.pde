public class Dude {
  private float x1; // all dude attributes
  private float y1;
  private float size;
  private int speed;
  private boolean xDirection;
  private boolean yDirection;
  private int red;
  private int green;
  private int blue;
  private String shape;

  private int collisionCooldown = 0; // cooldown timer
  private static final int COOLDOWN_TIME = 30; // duration to ignore a collision after one occurs

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
    // Decrease collision cooldown if active
    if (collisionCooldown > 0) {
      collisionCooldown--;
    }

    // Direction and speed of a dude
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

    // Bouncing off walls physics
    if ( x1 >= 800 - (size / 2) ) {
      xDirection = !xDirection;
    } else if (x1 <= size / 2) {
      xDirection = !xDirection;
    }

    if ( y1 >= 600 - (size / 2) ) {
      yDirection = !yDirection;
    } else if (y1 <= size / 2) {
      yDirection = !yDirection;
    }
  }

  public void update(Dude otherDude) {
    // Chasing logic
    if (x1 < otherDude.x1) {
      x1 += speed;
    } else {
      x1 -= speed;
    }

    if (y1 < otherDude.y1) {
      y1 += speed;
    } else {
      y1 -= speed;
    }

    // Check the collision cooldown
    if (collisionCooldown == 0 || otherDude.collisionCooldown == 0) {
      boolean xCollision = false;
      boolean yCollision = false;

      // dude on dude collisions
      if (x1 + (size / 2) >= otherDude.x1 - (otherDude.size / 2) && x1 - (size / 2) <= otherDude.x1 + (otherDude.size / 2)) {
        xCollision = true;
      }

      if (y1 + (size / 2) >= otherDude.y1 - (otherDude.size / 2) && y1 - (size / 2) <= otherDude.y1 + (otherDude.size / 2)) {
        yCollision = true;
      }

      if (xCollision && yCollision) {
        xDirection = !xDirection;
        yDirection = !yDirection;
        otherDude.xDirection = !otherDude.xDirection;
        otherDude.yDirection = !otherDude.yDirection;

        // Altering attributes after a collision
        blue += 20; 
        red -= 20;
        otherDude.speed = Math.min(otherDude.speed + 1, 9);
        otherDude.size = Math.max(otherDude.size - 10, 40);
        size = Math.min(size + 10, 200);

        // Set cooldown for both objects to prevent further collisions immediately
        collisionCooldown = COOLDOWN_TIME;
        otherDude.collisionCooldown = COOLDOWN_TIME;
      }
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
