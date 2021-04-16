class Ball {
  PVector pos;
  PVector vel;
  float r;
  Ball() {
    this.pos=new PVector(width/2, height/2);
    this.vel=new PVector(random(-1, 1)<0?-3-random(0, 2):3+random(0, 2), random(-1, 1)<0?-3-random(0, 2):3+random(0, 2));
    this.r=15;
  }
  void update() {
    if (this.pos.x<=this.r||this.pos.x>=width-this.r) {
      this.vel.x*=-1;
    }
    if (this.pos.y<=this.r||this.pos.y>=height-this.r) {
      this.vel.y*=-1;
    }
    this.collision(paddleA);
    this.collision(paddleB);
    this.pos.add(this.vel);
  }
  void collision(Paddle p) {
    if (this.pos.x>=p.pos.x-p.w/2&&this.pos.x<=p.pos.x+p.w/2&&this.pos.y>=p.pos.y-p.h/2&&this.pos.y<=p.pos.y+p.h/2) {
      this.vel.y*=-1;
    }
  }
  Ball clone(){
    return null;
  }
  void draw() {
    ellipseMode(CENTER);
    fill(230, 40, 60);
    noStroke();
    ellipse(this.pos.x, this.pos.y, this.r*2, this.r*2);
  }
}
