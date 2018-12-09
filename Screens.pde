void WaitingForToken(){

  
}

void LoadingTokenData(){
  
}

void initializeGifs(){
  waitingGif = new Gif(this, "Preloader 3.gif");
  waitingGif.loop();
  
  loadingGif = new Gif(this, "bubbles_dribbble.gif");
  loadingGif.loop();
  
}
