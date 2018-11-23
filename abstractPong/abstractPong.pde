ArrayList <Shape> shapes = new ArrayList<Shape>();
Paddle leftPaddle;

void setup() {
  size(600, 500);

  ellipseMode(RADIUS);

  Ball ball = new Ball(width/2, height/2, width/35, color(#420DAB));
  leftPaddle = new Paddle(width*3/32, height/7, width/32, height/ );

  shapes.add(ball);
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
