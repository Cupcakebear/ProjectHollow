class Entity {
  float x;
  float y;
  float jumpspeed = 3;
  float jumpheight = 100;
  float walkspeed = 2;
  float weight = 3;
  float xspeed;
  float yspeed;
  float dxspeed;
  float h = 20;
  float w = 20;
  float reff = 0;
  float diff = 0;
  boolean groundstate = false;
  boolean airstate = true;
  boolean onplatform = false;
  boolean jump = false;
  boolean jumpused = false;
  boolean wallstateR = false;
  boolean wallstateL = false;

  //EXPERIMENT IDEAS

  //boolean facingLeft = false;
  //boolean facingRight = true;
  
  
  //jump, weight, fastfall and moving left/right
  

  void jump()
  {
    if(groundstate == true || onplatform == true){
    yspeed = -jumpspeed;
    jump = true;
    jumpused = true;
    reff = y;
    onplatform = false;
    }
  }
  void releasejump(){
    jump = false;
    onplatform = false;
  }

  void fastfall() {
    yspeed = yspeed + walkspeed;
  }
  void moveRight() {
    xspeed = walkspeed;
  }
  void stopRight() {
    xspeed =xspeed - walkspeed; 
    if (keyPressed == false) {
      xspeed = 0;
    }
  }
  void stopLeft() {
    xspeed =xspeed + walkspeed;
    if (keyPressed == false) {
      xspeed = 0;
    }
  } 
  void moveLeft() {
    xspeed = -walkspeed;
  }

}
