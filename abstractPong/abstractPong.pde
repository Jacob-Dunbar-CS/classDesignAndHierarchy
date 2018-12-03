private ArrayList <Shape> shapes = new ArrayList<Shape>();

public void setup() {
  size(1000, 900);
  ellipseMode(RADIUS);
  createShapes();

  font = createFont("Times New Roman", 16);
  textFont(font, 36);
}
public void draw() {
  if (gameStart == true) {
    background(255);
    for (int i = 0; i < firework.length; i++) {
      firework[i].draw();
      firework[i].step();
    }
    drawShapes();
    ball.step();
    paddleMove();
  }
}
