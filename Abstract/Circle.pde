class Circle extends Shape {

  color c;
  float radius;
  float xSpeed = 1;
  float ySpeed = 1;

  Circle(float x, float y, float radius, color c) {
    super(x, y);
    this.radius = radius;
    this.c = c;
  }
  void draw() {
    fill(c);
    ellipse(x, y, radius, radius);
  }
  void step() {
    x+=xSpeed;
    y+=ySpeed;
    if (y - radius < 0 || y + radius > height) {
      xSpeed *= -1;
    }
    if (y - radius < 0 || y + radius > height) {
      ySpeed *= -1;
    }
  }
}
