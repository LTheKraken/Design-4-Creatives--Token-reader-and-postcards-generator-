import gifAnimation.*;
Gif loadingGif;
Gif waitingGif;

  int card_n = 3; //Number of cards
  
  // 0 - Scan screen
  // 1 - Loading data screen
  // 2 - Card selection screen 
  // 3 - After card selection
  // 4 - Printing
  // 5 - Thank you/ Have a great time
  int Screen = 0; 
  Card[] cards = new Card[card_n];
  
  int[][] clicks;
  int currentPortrait = 0;
  
  void setup(){
    frameRate(100);
    
    initializeGifs();
    size(1200,800);
    initializeCards();
    smooth();
    noLoop();
  }
  
  
  void draw(){
     noStroke();
     drawCards();
  }
