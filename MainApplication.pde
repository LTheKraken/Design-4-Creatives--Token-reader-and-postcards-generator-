import gifAnimation.*;

  int card_n = 3; //Number of cards
  int Screen = 0; //Current screen
  
  Card[] cards = new Card[card_n];
  
  int[][] clicks; // Click count (do not know if it is necessary)
  int currentPortrait = 0; // Current persona (do not know if it is necessary)
  
  void setup(){
    frameRate(100); // Stable frameRate for Gifs 
    size(1200,800); // Later we need to put here fullScreen
    //fullScreen();
        
    initiliazeGifs();
    initializeCards();
    smooth();
  }
  
  void draw(){
    if(transition){
      showTransition();
    }else{
      showScreen();
      }
  }
  
  void keyPressed(){
   
    if(key == ' '){
      Screen++;
    }
  }
