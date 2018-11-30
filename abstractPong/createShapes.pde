public void createShapes() {
  ball = new Ball(width/2, height/2/*, width/64, color(#420DAB)*/);
  leftPaddle = new Paddle(width*6/64, height*3/8, width/64, height/4, color(#420DAB));
  rightPaddle = new Paddle(width*57/64, height*3/8, width/64, height/4, color(#420DAB));
  firework = new Firework[15];

  shapes.add(ball);
  shapes.add(Score1);
  shapes.add(Score2);
  shapes.add(leftPaddle);
  shapes.add(rightPaddle);
  //shapes.add(firework);
  for (int i = 0; i < firework.length; i++) {
    firework[i] = new Firework(0, -10000);
  }
}
