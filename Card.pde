  //Some public variables connected to cards
  int card_w = 300; // Width of card
  int card_h = 600; // Height of card
  int margin = 20;

class Card{
  PGraphics canvas;
  float x,y,w,h;
  int index;
  
  Children symbC_c, symbC_l;
  PShape symb[];
  PShape symbC; //Symbol with childrens

   Card(float x, float y, float w, float h, int index){
     this.x = x;
     this.y = y;
     this.w = w;
     this.h = h;
     this.index = index;
     float size = random(80,300);
     int selectedColorPallete = index;
     
     initializeSVG();
    
     canvas = createGraphics(card_w, card_h);
     canvas.beginDraw();
     canvas.noStroke();
     canvas.background(colorList[selectedColorPallete][0]);
     
     for(int i = 0; i < 4; i++){
         
       
       for(int j = 0; j < (int) random(1,10); j++){
        symb[i].disableStyle();  // Ignore the colors in the SVG
        canvas.fill(colorList[selectedColorPallete][i+1]);    // Set the SVG fill to blue

        size = random(100,150);
        // rotate symbol randombly between 0 - 360 degrees
        symb[i].rotate(radians(random(0,360))); 
        float X = random(0 + margin,card_w - margin);
        float Y = random(0 + margin, card_h - margin);
        println("X : ", x, "Y: ", y, " Xr: ", X, "Yr: ", Y);
        canvas.shape(symb[i],X,Y,size,size);
         
       }
     }

// Symbol with children draw
    //println("Draw symbolC");
    //symbC_l.draw(canvas);
    //symbC_c.draw(canvas);

     canvas.endDraw();
   }
  
  void display(){
    image(canvas,x,y);
    
}
  
    void isClicked(){
    if(mouseX >= x && mouseX <= x+ w && mouseY >= y && mouseY <= y+ h){
      clicks[currentPortrait][index]++;
      println("Mouse",index," is pressed ",clicks[index], " times of ", allClicks());
    }
  }
  
  
  void initializeSVG(){  //set SVG
    symb = new PShape[4];
    
    switch(index) {
  case 0: 
    
    symb[0] = loadShape("symbols-02.svg");
    symb[1] = loadShape("symbols-03.svg");
    symb[2] = loadShape("symbols-04.svg");
    symb[3] = loadShape("symbols-05.svg");
    
    break;
  case 1: 
    symb[0] = loadShape("symbols-07.svg");
    symb[1] = loadShape("symbols-08.svg");
    symb[2] = loadShape("symbols-09.svg");
    symb[3] = loadShape("symbols-10.svg");
    break;
  case 2: 
    symb[0] = loadShape("symbols-11.svg");
    symb[1] = loadShape("symbols-12.svg");
    symb[2] = loadShape("symbols-13.svg");
    symb[3] = loadShape("symbols-14.svg");
    break;
  default:             // Default executes if the case labels
    println("None");   // don't match the switch parameter
    break;
}

    float size = random(20,300);
    
    PVector symbC_pos = new PVector(random(0+margin,card_w-margin),random(0+margin,card_h-margin));
    symbC = loadShape("symbols-06.svg");
    symbC_c = new Children(symbC.getChild("circle"), symbC_pos, color(250, 20, 80), size);
    symbC_l = new Children(symbC.getChild("lines"), symbC_pos, color(158, 20, 80), size);
    println("Initialization of SVG complete");
}
 
} //********************** END OF CLASS


//*****************************
//Functions that is connected to cards
//*****************************

//Create cards
void initializeCards(){
  clicks = new int[card_n][card_n];
  for(int i=0; i < card_n; i++){ 
   cards[i] = new Card(20+width/card_n*i,100, card_w, card_h, i);
  }
} // End of initializeCards()


//Draw Cards
void drawCards(){
  
   for(int i=0; i < card_n; i++){
   cards[i].display();
  }
  
}

// Collects the number of clicks
int allClicks(){
    int sum = 0;
     for(int i=0; i < card_n; i++){
    sum = sum + clicks[currentPortrait][i];
  }
  return sum;
} // End of allClicks()
