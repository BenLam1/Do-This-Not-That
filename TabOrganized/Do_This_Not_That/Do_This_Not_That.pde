//Global Variables
float buttonX1, buttonY1, buttonWidth1, buttonHeight1;
float buttonX2, buttonY2, buttonWidth2, buttonHeight2;
float rectDisplayX, rectDisplayY, rectDisplayWidth, rectDisplayHeight;
float ellipseX, ellipseY, ellipseXDiameter, ellipseYDiameter;
float x, y, xDiameter, yDiameter;
color black=#000000, white=#FFFFE1; //Night Mode, blue is 00, white is not night mode
Boolean rectON=false, ellipseON=false;
//
String buttonText1= "Click Me";
String buttonText2= "Or Me";
PFont buttonFont;
color purple = #2C08FF; //Note Night Mode Friendly, all of the blue is included
//
void setup()
{
  //Display Geometry
  fullScreen(); //displayWidth, displayHeight
  displayOrientation();
  population();
  textSetup();
  
}//End setup
//
void draw()
{
 GUI_draw();


 
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed()
{
  buttonsMousePressed();
}//End mousePressed
//
//End MAIN
