public void createShapes() {
  ball = new Ball(width/2, height/2);
  leftPaddle = new Paddle(width*6/64, height*3/8, width/64, height/4, color(#420DAB));
  rightPaddle = new Paddle(width*57/64, height*3/8, width/64, height/4, color(#420DAB));
  firework = new Firework[15];

  shapes.add(ball);
  shapes.add(Scoreboard);
  shapes.add(leftPaddle);
  shapes.add(rightPaddle);
  for (int i = 0; i < firework.length; i++) {
    firework[i] = new Firework(0, 10000);
  }
}
