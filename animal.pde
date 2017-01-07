
/* 2017.01.08 am 03:25 */

class Animal {
 
  int lifeSpan ;
  int size ;
  int bodyColor1 , bodyColor2 , bodyColor3 ;
  PVector location ;
  PVector velocity ;
  PVector acceleration ;
  
  Animal() {
    
    lifeSpan   = 500 ;
    size       = 16  ;
    bodyColor1 = 50  ;
    bodyColor2 = 50  ;
    bodyColor3 = 50  ;
    
    location     = new PVector( random(width) , random(height) ) ;
    velocity     = new PVector( 0 , 0 ) ;
    acceleration = new PVector( 0 , 0 ) ;
    
  }
  
  void applyForce( PVector force ) {
    acceleration.add( force ) ;
  }
  
  void update() {
    velocity.add( acceleration ) ;
    location.add( velocity ) ;
    acceleration.mult( 0 ) ;
  }
  
  void run() {
    update();
    checkEdge();
    display();
  }
  
  void checkEdge() {
    
    if( location.x > width || location.x < 0 ) {
      velocity.x = (-1) * velocity.x ;
    }
    if( location.y > height || location.y < 0 ) {
      velocity.y = (-1) * velocity.y ;
    }

  }
  
  void display() {
    fill( bodyColor1 , bodyColor2 , bodyColor3 ) ;
    ellipse( location.x , location.y , size , size ) ;
  }
}
