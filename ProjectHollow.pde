Player a;
Platform b;
Platform c;
Platform d;
Platform big;
Hazard wall;

//BUGS: clean keyreleased codes, when all 3 movement buttons are pressed, platform mechanics dont work.
//^^^ (it has to do with jump being read as true when W is held.
//BUGS: side collisions completely stop y momentum.

int framerate = 120;

void setup(){
  size(500,500);
  frameRate(framerate);
  a = new Player();
  b = new Platform(100, 450 , 100, 10);
  c = new Platform(200, 400 ,100 , 10);
  d = new Platform(300,350,100,10);
  big = new Platform(400,300,50,80);
  wall = new Hazard(140,420,10,30);
  
}

void draw(){
  background(51);
  //Player 
  a.show();
  a.update();

  //Platform 

  
  b.instance();
  c.instance();
  d.instance();
  big.instance();
  wall.instance();
}
 
void keyPressed(){
  if(a.jumpused == false){
    if(key == 'w' || key == 'W'){
      a.jump();  
    }
  }
   if(key == 'a' || key == 'A'){
      a.moveLeft();
  }
   if(key == 'd' || key == 'D'){
    a.moveRight();
   }
   if(key == 's' || key =='S'){
     a.fastfall();
   }
   if(key == 'o'){
     a.blinkLeft();
     a.dashstate = true;
   }
   if(key == 'p'){
     a.blinkRight();
     a.dashstate = true;
   }
   
   
   if(key == 't'){
     a.onplatform = true;
   }
}

  
void keyReleased(){
  if(key == 'w'|| key == 'W' ){
    a.releasejump();
  }

  if(key == 'a' || key == 'A' ){
    a.stopLeft();
  }

   if(key == 'd' || key == 'D'){
    a.stopRight();
   }

   if(key == 'o'){
     a.dashstate = false;
   }
   if(key == 'p'){
     a.dashstate = false;
   }

}
