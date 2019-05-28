class Cabbage extends Item{
	// Requirement #1: Complete Cabbage Class
    Cabbage(float x, float y){
     super(x, y);
      }

	//Code for Reference:
		
			// Display Cabbage
      void display(){
      if(isAlive==true){
			image(cabbage, x, y);
      }
      }
      

			// Check collision with player
      void checkCollision(Player player){
        if (isAlive==true){
        if(player.health < player.PLAYER_MAX_HEALTH
        && isHit(x, y, SOIL_SIZE, SOIL_SIZE, player.x, player.y, player.w, player.h)){
          player.health ++;
          isAlive = false;
        }
          // Now that they're objects, toggle isAlive instead of throwing them away from screen
          
      }
      }

}
