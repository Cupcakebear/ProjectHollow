class Platform{
  int x;
  int y;
  int w;
  int h;
  boolean above = false;
  boolean right = false;
  boolean left = false;
  boolean activeplatform = false;
  
  Platform(int xx,int yy,int ww ,int hh){
    x=xx;
    y=yy;
    w=ww;
    h=hh;
  }
  
  
  void instance(){
    show();
    checkPlayerPosition();
    checkPlayerCollision();
  }
  void show(){
   fill(204); 
   rect(x,y,w,h);
  }
  
  void checkPlayerPosition(){

    if((a.y+a.h) < (y+h)){
      if(a.x > x && a.x < (x+w)){
      above = true;
      }
    }else{
      above = false;
    }
    
    if(a.x > (x+w/2)){
      if((a.y+ (a.h/2)) > y && (a.y+ (a.h/2)) < (y+h)){
        right = true;
      }
    }else{
      right = false;
    }
    
   if((a.x+a.w) < (x+(w/2))){
      if((a.y+ (a.h/2)) > y && (a.y+ (a.h/2)) < (y+h)){
        left = true;
      }
    }else{
      left = false;
    }
  }
  
  void checkPlayerCollision(){
    if(above == false){  
      if(a.y < (y+h)){
        if(a.x > x && a.x < (x+w)){
          a.releasejump();
          
        }
      }
    }
    if(above == true){
      if((a.y+a.h + 3 ) > y ){
        if(a.x+a.w > x && a.x < (x+w)){
          a.onplatform = true;
          a.jumpused = false;
        }
      }
    }

    if(left == true){
      if((a.x + a.w) > (x)){
       if(((a.y+ (a.h/2)) > y) && ((a.y+ (a.h/2)) < (y+h))){
         a.x = x-a.w;
        }
      }
    }
    if(right == true){
       if((a.x) < (x + w)){
       if((a.y+ (a.h/2)) > y && (a.y+ (a.h/2)) < (y+h)){
         a.x = x+w;
        }
      }
    }    
  } 
}
  
