class Paddle {
  PVector pos;
  color col;
  int w, h;
  Paddle(color col, int y_pos) {
    this.pos=new PVector(width/2, y_pos);
    this.col=col;
    this.w=90;
    this.h=10;
  }
  void left() {
    this.pos.x-=10;
    this.pos.x=constrain(this.pos.x, this.w/2, width-this.w/2);
  }
  void right() {
    this.pos.x+=10;
    this.pos.x=constrain(this.pos.x, this.w/2, width-this.w/2);
  }
  void draw() {
    rectMode(CENTER);
    fill(this.col);
    noStroke();
    rect(this.pos.x, this.pos.y, this.w, this.h);
  }
}
