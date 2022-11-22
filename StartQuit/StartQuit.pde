//Global Variables
int appWidth, appHeight;
Boolean start=false, noNowReallyStart=false;
int quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
//
void setup() 
{
  size (400, 300);
  //fullScreen(); //displayWidth, displayHeight
  appWidth = width;
  appHeight = height;
  //
  //Population
  quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight
} // End setup
//
void draw() 
{
 if (  noNowReallyStart==true ) { //Actual start IF
 background(0); //Night Mode not considered yet
 rect( quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight ); //Quit Button
  }//End If-Start
} //End Draw
//
void keyPressed() 
{ 
  //
  if ( key==' ' && start==true ) noNowReallyStart = true;
  //
  //Prototype Key Board Quit Button OR shortcut
  if ( key=='1' ) exit();
  if ( keyCode == ESC ) exit();
  //
} //End KeyPressed
//
void mousePressed() 
{
  //
  //OS Level Start Button
  start = true; 
  println("To Start, Press the Space Bar");
  //
} //End mousePressed
//
//End Main Program
