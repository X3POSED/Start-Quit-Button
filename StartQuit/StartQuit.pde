//Global Variables
Boolean start=false, noNowReallyStart=false;
//
void setup() {
} // End setup
//
void draw() 
{
 if (  noNowReallyStart==true ) { //Actual start IF
 background(0); //Night Mode not considered yet
 rect(); //Quit Button
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
