
// setting a variable for the turtle picture
PImage turtle;

// setting a variable for the rabbit picture
PImage hare;

// setting a variable for the turtle speed
int turtleSpeed = 0;

// setting a variable for the hare speed
int hareSpeed = 0;

// setting a variable for if the hare wins
boolean hareWin = false;

// setting a variable for if the turtle wins
boolean turtleWin = false;

//creating void setup
void setup() {

  //loading an image for the turtle
  turtle = loadImage("turtle.jpg");
  
  //loading an image for the hare
  hare = loadImage("bunny.jpg");

  // setting the screen size
  fullScreen();
}

//creating a void draw
void draw() {

  // settng the background colour
  background(0);
  
  // setting the turtle position
  image (turtle, width/4, turtleSpeed, 300, 300);
  
  // setting the hare position
  image (hare, width/1.5, hareSpeed, 300, 300);

  // if the hare wins then show text that says that the hare won
  if (hareWin == true && turtleWin == false) {
    
    //setting the text size
    textSize(50);
    
    //deciding what the text shoul say
    text("HARE WINS!", width/2, height/2);
  }

  // if the turtle wins then show text that says the turtle won
  if (turtleWin == true && hareWin == false) {
    
    //setting the text size
    textSize(50);
    
    //deciding what the text should say
    text("TORTOISE WINS!", width/2, height/2);
  }
}

//setting a void keyPressed
void keyPressed() {

  // if you press a then the turtle will move down the screen
  if (key == 'a' || key == 'A') {
    
    //setting the turtle speed
    turtleSpeed += 10; 
    
    //if the turtle makes it to the end of the screen
    if (turtleSpeed >= height) {
      
      //setting the turtle win variable to true
      turtleWin = true;
    }
  }

  // if you press l then then
  if (key == 'l' || key == 'L') {
    
    // setting the hare speed
    hareSpeed += 10;
    
    // if the hare makes it to the bottom of the screen
    if (hareSpeed >= height) {
      
      //set the hare win variable to true
      hareWin = true;
    }
  }
}
