ArrayList <Shape> shapes = new ArrayList<Shape>();
Paddle leftPaddle;
Paddle rightPaddle;
Ball ball;

static boolean [] keys = new boolean[4];

void setup() {
  size(1000, 900);

  ellipseMode(RADIUS);

  ball = new Ball(width/2, height/2, width/64, color(#420DAB));
  leftPaddle = new Paddle(width*6/64, height*3/8, width/64, height/4, color(#420DAB));
  rightPaddle = new Paddle(width*57/64, height*3/8, width/64, height/4, color(#420DAB));

  shapes.add(ball);
  shapes.add(leftPaddle);
  shapes.add(rightPaddle);
}

void draw() {
  background(255);

  for (int i = 0; i < shapes.size(); i++) {
    shapes.get(i).draw();
  }
  ball.step();
  if (keys[0] == true) {
    leftPaddle.stepUp();
  }
  if (keys[1] == true) {
    leftPaddle.stepDown();
  }
  if (keys[2] == true) {
    rightPaddle.stepUp();
  }
  if (keys[3] == true) {
    rightPaddle.stepDown();
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
  //abstract void step();
}

void keyPressed() {
  if (key == 'w' || key =='W') {
    keys[0] = true;
  }
  if (key == 's' || key =='S') {
    keys[1] = true;
  }
  if (keyCode == UP) {
    keys[2] = true;
  }
  if (keyCode == DOWN) {
    keys[3] = true;
  }
}
void keyReleased() {
  if (key == 'w' || key =='W') {
    keys[0] = false;
  }
  if (key == 's' || key =='S') {
    keys[1] = false;
  }
  if (keyCode == UP) {
    keys[2] = false;
  }
  if (keyCode == DOWN) {
    keys[3] = false;
  }
}
