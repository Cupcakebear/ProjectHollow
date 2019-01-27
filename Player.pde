class Player extends Entity{

  boolean dashstate = false;
  float spawnx = 20;
  float spawny = 450;
  //EXPERIMENT IDEAS
  
  //boolean facingLeft = false;
  //boolean facingRight = true;
  
 Player(){
   x = spawnx;
   y = spawny;
 }
 
 void show(){
   fill(#3CF73D);
   rect(x,y,w,h);
 }
 
 void update(){ 
  //STATE OF ENTITY
  
  System.out.println();

  if(y < 480){
    airstate = true;
    groundstate = false;
  }else{
    groundstate = true;
    airstate= false;
  }

    //COLLISION CODE
  if(dashstate == false){
   x+=xspeed;
   y+=yspeed;
   }
   
  if(dashstate == true){
    x+=dxspeed;
    y+=yspeed;
   }

  if(y > 480){
    y = 480;
  }
  if(y < 0){
    y = 0;
  }
  if(x > 480){
    x = 480;
  }
  if(x < 0){
   x = 0;
  }
  //MOVEMENT SMOOTHY CODE
  if(xspeed>walkspeed){
    xspeed = walkspeed;
  }
  if(xspeed<-walkspeed){
   xspeed = -walkspeed; 
  }
//jump mechanics(need updating)


   diff = abs(reff - y);
   if(diff > jumpheight){
     yspeed = weight;
   }
   if(a.jump == false){
     yspeed = weight;
     if(a.groundstate == true){
       yspeed = 0;
     }else if(a.onplatform == true){
       yspeed = 0;
     }
  }
  if(yspeed == 0){
    jumpused = false;
  }
  
  
  if(xspeed != 0){
    onplatform = false;
  }
  if(yspeed > 0){
    jump = false;
  }
 }
 
 
//prototypeABILITIES
  void blinkLeft(){
     x = x - 50;
  }
  void blinkRight(){
     x = x + 50;
  }

 
}
