class Dinosaur extends Enemy{
	// Requirement #4: Complete Dinosaur Class
  float speed=2f/2;
	final float TRIGGERED_SPEED_MULTIPLIER = 5;

  void display(){
  int direction = (speed > 0) ? RIGHT : LEFT;
  pushMatrix();
  translate(x, y);
  if (direction == RIGHT) {
    scale(1, 1);
    image(dinosaur, 0, 0); 
  } else {
    scale(-1, 1);
    image(dinosaur, -w, 0); 
  }
  popMatrix();
}
  

  void update(){
    if((player.y==y&&player.x>x&&speed>0)||(player.y==y&&player.x<x&&speed<0)){
    x += speed*5;
    }else{x += speed;}
    
    if(x < 0 || x > width - w){
      speed*=-1;
  }
  }

  Dinosaur(float x, float y){
    super(x, y);
  }

	// HINT: Player Detection in update()
	/*
	float currentSpeed = speed
	If player is on the same row with me AND (it's on my right side when I'm going right OR on my left side when I'm going left){
		currentSpeed *= TRIGGERED_SPEED_MULTIPLIER
	}
	*/
}
