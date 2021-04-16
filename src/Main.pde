Ball ball;
Paddle paddleA, paddleB;
void setup() {
  size(400, 600);
  ball=new Ball();
  paddleA=new Paddle(#30c44a, 50);
  paddleB=new Paddle(#304ac4, height-50);
  println(int("10"),float("10.001f"));
}
void keyPressed() {
  switch (keyCode) {
  case 65:
    paddleA.left();
    break;
  case 68:
    paddleA.right();
    break;
  case 74:
    paddleB.left();
    break;
  case 76:
    paddleB.right();
    break;
  }
}
void draw() {
  background(0);
  stroke(100);
  line(0, height/2, width, height/2);
  ball.update();
  ball.draw();
  paddleA.draw();
  paddleB.draw();
}
