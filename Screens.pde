// EVERYTHING CONNECTED TO SCREENDS

//Screens variables
boolean transition = false;
Gif loadingGif;
Gif waitingGif;

void initiliazeGifs(){
  waitingGif = new Gif(this, "Preloader 3.gif"); // For now random gif as placeholder
  waitingGif.loop();

  loadingGif = new Gif(this, "bubbles_dribbble.gif"); // For now random gif as placeholder
  loadingGif.loop();
}

 // Showing a gif that asks to put the token to the scanner
void WaitingForToken() {
  image( waitingGif, width / 2 -  waitingGif.width/ 2, height / 2 -  waitingGif.height / 2);
}

 // Showing a gif that shows that we reading token and "analyzing" the data
void LoadingTokenData() {
  image( loadingGif, width / 2 -  loadingGif.width/ 2, height / 2 -  loadingGif.height / 2);

}

void showScreen() {
  switch(Screen) {
  case 0: // 0 - Scan screen
    WaitingForToken();
    break;
  case 1: // 1 - Loading data screen
    LoadingTokenData(); 
    break;
  case 2: // 2 - Card selection screen 
     noStroke();
     background(255);
     drawCards();
    break;
  case 3: // 3 - After card selection

    break;
  case 4:   // 4 - Printing
  
    break;
  case 5:   // 5 - Thank you/ Have a great time

    break;
  default:             // Default executes if the case labels
    println("None");   // don't match the switch parameter
    break;
  }
}

void showTransition(){

}
