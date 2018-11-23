class Paddle extends Shape {
  private float paddleWidth;
  private float paddleHeight;
  private float paddleSpeed;
  private color c;
  
  Paddle(float x, float y, float paddleWidth, float paddleHeight, color c) {
    super(x, y);
    this.paddleWidth = paddleWidth;
    this.paddleHeight = paddleHeight;
    this.c = c;
  }
  
  void draw() {
    fill(c);
    rect(x, y, paddleWidth, paddleHeight);
  }
  
  void step() {
    
  }
    
}
