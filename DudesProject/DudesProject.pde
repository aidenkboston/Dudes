Dude dude1 = new Dude(100, 300, 50, 2, true, true, 0, 255, 0, "square");
Dude dude2 = new Dude(300, 100, 100, 2, false, false, 255, 0, 0, "circle");
// order: x1, y1, size, speed, xDirection, yDirection, red, green, blue, shape

void setup() {
  size(800, 600); 
}

void draw() {
  background(255);
  dude1.update();
  dude1.show();
  dude2.update(dude1);
  dude2.show();
}
