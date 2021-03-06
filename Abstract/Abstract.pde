ArrayList <Shape> shapes = new ArrayList<Shape>();

void setup() {
  size(500, 500);

  Rectangle rHex = new Rectangle(width/4, height/4, width/2, height/2, color(#420DAB));
  Rectangle rRGB = new Rectangle(width*3/5, height*3/5, width/5, height/5, color(random(255), random(255), random(255)));
  Circle cRGB = new Circle(width/3, height/3, width/12, color(random(255), random(255), random(255)));

  shapes.add(rHex);
  shapes.add(rRGB);
  shapes.add(cRGB);
  ellipseMode(RADIUS);
}

void draw() {
  background(255);
  
  for (int i = 0; i < shapes.size(); i++) {
  shapes.get(i).draw();
  shapes.get(i).step();
  }
}

abstract class Shape {
  float x;
  float y;

  Shape(float x, float y) {
    this.x = x;
    this.y = y;
  }

  abstract void draw();
  abstract void step();
}
