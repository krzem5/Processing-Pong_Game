Ball b;
Paddle pa;
Paddle pb;



void setup(){
	size(400,600);
	b=new Ball();
	pa=new Paddle(#30c44a,50);
	pb=new Paddle(#304ac4,height-50);
}



void keyPressed(){
	switch (keyCode){
		case 65:
			pa.left();
			break;
		case 68:
			pa.right();
			break;
		case 74:
			pb.left();
			break;
		case 76:
			pb.right();
			break;
	}
}



void draw(){
	background(0);
	stroke(100);
	line(0,height/2,width,height/2);
	b.update();
	b.draw();
	pa.draw();
	pb.draw();
}
