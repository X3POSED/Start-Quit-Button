//Global Variables
int appWidth, appHeight;
Boolean start=false, noNowReallyStart=false;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
color quitButtonColour, yellow=#FFFF00 , purple=#FF00FF ;
//
void setup()
{
  size (400, 300); //Landscape
  //fullScreen(); //displayWidth, displayHeight
  displayOrientation();
  appWidth = width; 
  appHeight = height;
  population();
  //
  //
  
} //End setup
//
void draw()
{
  if ( noNowReallyStart==true ) { //Actual start IF
    background(0); //Night Mode not considered yet
    //
    //Logical Rectangle
    println("X-Value", quitButtonX, mouseX, quitButtonX+quitButtonWidth );
    println("Y-Value", quitButtonY, mouseY, quitButtonY+quitButtonHeight);
    //
    //Quit Button Hover Over Feature
    if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) {
      quitButtonColour = yellow; //Remember Knight Mode
      //HINT logical rect: QuitButtonWorks-Boolean TRUE, here
    } else {
      quitButtonColour = purple; //Remember Day Mode
      //HINT logical rect: QuitButtonWorks-Boolean FALSE, here
    } //End Hover Over
    //
    fill(quitButtonColour);
    rect( quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight ); //Quit Button
  } //End IF-STart
  //
} //End draw
//
void keyPressed()
{
  //
  if ( key==' ' && start==true ) noNowReallyStart = true;
  //
  //Prototype Key Board Quit Button OR shortcut
  if ( key=='Q' || key=='q' ) exit();
  if ( keyCode == ESC ) exit();
  //
} //End keyPressed
//
void mousePressed()
{
  //
  //OS Level Start Button
  start = true;
  println("To Start, Press the Space Bar");
  //
  //Quit Button: Logical Rectangle, see println in draw()
  if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) exit();
  //
} //End mousePressed
//
//End Main Program
