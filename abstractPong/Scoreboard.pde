Shape Scoreboard = new Shape(50,100) {
  public void draw() {
    text(abstractPong.scores[0], x, y);
    text(abstractPong.scores[1], x+880, y);
  }
};
