class Ball extends Shape {
  private float radius;
  private color c;
  private float xSpeed = random(-6, 6);
  private float ySpeed = random(-6, 6);

  Ball(float x, float y) {
    super(x, y);
    this.radius = width/64;
    this.c = color(#420DAB);;
  }

  void draw() {
    fill(c);
    ellipse(x, y, radius, radius);
  }
  void step() {
    while (xSpeed > -2 && xSpeed < 2) {
      xSpeed = random(-6, 6);
    }
    while (ySpeed > -2 && ySpeed < 2) {
      ySpeed = random(-6, 6);
    }
    x += xSpeed;
    y += ySpeed;

    if (x - radius < 0) {
      xSpeed *= -1;
      abstractPong.scores[1] ++;
      println(abstractPong.scores[0]+" "+abstractPong.scores[1]);
      x = width/2;
      y = height/2;
    }
    if (x + radius > width) {
      xSpeed *= -1;
      abstractPong.scores[0] ++;
      println(abstractPong.scores[0]+" "+abstractPong.scores[1]);
      x = width/2;
      y = height/2;
    }
    if (y - radius < 0 || y +radius > height) {
      ySpeed *= -1;
    }
    if (x + radius > leftPaddle.getX() && x - radius < leftPaddle.getX() + leftPaddle.getWidth() && y > leftPaddle.getY() && y < leftPaddle.getY() + leftPaddle.getHeight()) {
      xSpeed *= -1;
    }
    if (x - radius < rightPaddle.getX() + rightPaddle.getWidth() && x + radius > rightPaddle.getX() && y > rightPaddle.getY() && y < rightPaddle.getY() + rightPaddle.getHeight()) {
      xSpeed *= -1;
    }
  }

  public float getX() {
    return x;
  }
  public float getY() {
    return y;
  }
  public float getRadius() {
    return radius;
  }
}
