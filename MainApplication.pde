//IMPORTANT press SPACE to continue at the start.

//The gifs are not created by us. It is just placeholders

import gifAnimation.*;
import controlP5.*;


  int card_n = 3; //Number of cards
  int Screen = 0; //Current screen
  
  Card[] cards = new Card[card_n];
  
  int[][] clicks; // Click count (do not know if it is necessary)
  int currentPortrait = 0; // Current persona (do not know if it is necessary)
  
  void setup(){
    frameRate(100); // Stable frameRate for Gifs 
    size(1200,800); // Later we need to put here fullScreen
    //fullScreen();
    initiliazeButtons();
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
  
void mouseClicked() {
  if(Screen == 2){ //if screen shows the card selection, check which cards is Selected
  for(int i = 0; i < card_n; i++){
   cards[i].isClicked(); 
  }
  }
}
  
  void keyPressed(){
   
    if(key == ' '){
      Screen++;
    }
  }
