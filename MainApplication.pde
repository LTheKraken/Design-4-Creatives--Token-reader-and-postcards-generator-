import gifAnimation.*;

  int card_n = 3; //Number of cards

  int Screen = 0; 
  Card[] cards = new Card[card_n];
  
  int[][] clicks;
  int currentPortrait = 0;
  
  void setup(){
    frameRate(100);
    initiliazeGifs();
    size(1200,800);
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
