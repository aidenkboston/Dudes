Dude dude1 = new Dude(100, 300, 100, true, true);
Dude dude2 = new Dude(300, 100, 100, false, false);

void setup() {
  size(800, 800); 
}

void draw() {
  background(255);
  dude1.update();
  dude1.show(0, 255, 0, "circle");
  dude2.update(dude1);
  dude2.show(255, 0, 0, "circle");
}
