public void drawShapes() {
  for (int i = 0; i < shapes.size(); i++) {
    shapes.get(i).draw();
  }
  for (int i = 0; i < firework.length; i++) {
    firework[i].draw();
    firework[i].step();
  }
}
