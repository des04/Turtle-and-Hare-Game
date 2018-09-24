
// setting variables for for the turtle and hair pictures
PImage turtle;
PImage hare;

// setting variables for the turtle and hare speeds
int turtleSpeed = 0;
int hareSpeed = 0;

// setting vairbles for the winning turtle/hair text
boolean hareWin = false;
boolean turtleWin = false;

void setup() {
  
  //loading an image for the turtle and hare
  turtle = loadImage("turtle.jpg");
  hare = loadImage("bunny.jpg");
  
  // setting the screen size
  fullScreen();
}
void draw() {
  
  // settng the background colour
  background(0);
  image (turtle, width/4, turtleSpeed, 300, 300);
  image (hare, width/1.5, hareSpeed, 300, 300);
  
  // if the hare wins then show text that says that the hare won
  if (hareWin == true && turtleWin == false) {
    textSize(50);
    text("HARE WINS!", width/2, height/2);
  }
  
  // if the turtle wins then show text that says the turtle won
  if (turtleWin == true && hareWin == false) {
    textSize(50);
    text("TORTOISE WINS!", width/2, height/2);
  }
}
void keyPressed() {
  
  // if you press a then the turtle will move down the screen
  if (key == 'a' || key == 'A') {
    turtleSpeed += 10; 
    if (turtleSpeed >= height) {
      turtleWin = true;
    }
  }
  
  // if you press l then the hare will move down the screen
  if (key == 'l' || key == 'L') {
    hareSpeed += 10;
    if (hareSpeed >= height) {
      hareWin = true;
    }
  }
}
