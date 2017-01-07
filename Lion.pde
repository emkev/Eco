
/*  2017.01.08 am 03:22  
    carnivorous animal
*/

class Lion extends Animal {
  
  Lion() {
    
    lifeSpan   = 500 ;
    size       = 16  ;
    bodyColor1 = 50  ;
    bodyColor2 = 100  ;
    bodyColor3 = 50  ;
    
    location     = new PVector( random(width) , random(height) ) ;
    velocity     = new PVector( 1 , 1 ) ;
    acceleration = new PVector( 0 , 0 ) ;

  }

}
