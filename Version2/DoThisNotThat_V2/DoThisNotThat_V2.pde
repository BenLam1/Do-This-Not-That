//Global Variables
float buttonX1, buttonY1, buttonWidth1, buttonHeight1;
float rectDisplayX, rectDisplayY, rectDisplayWidth, rectDisplayHeight;
float ellipseX, ellipseY, ellipseXDiameter, ellipseYDiameter;
float x,y, xDiameter, yDiameter;
color black=#000000, white=#FFFFE1; //Night Mode, blue is 00, white is not night mode
boolean rectON=false, ellipseON=false;
//
String buttonText1= "Click Me";
PFont buttonFont;
color purple = #2C08FF;
//
void setup () 
{
  //Display Geometry
  fullScreen();
  println (width, height, displayWidth, displayHeight);
  int appWidth = displayWidth;
  int appHeight = displayHeight;
  String ls="Landscape or Square", p="portrait", DO="Display Orientation:", instruct="Bru, turn your phun";
  String orientation = ( appWidth >= appHeight ) ? ls : p ; //Ternary Operator, repeats IF-ELSE to populate var
  println (DO, orientation);
  if (orientation==ls) {
    println("Good to Go");
  } else { //Break our app if not landscape
    println(instruct);
    appWidth = appWidth*0;
    appHeight = appHeight*0;
  }
  println("App Geometry is:"," \tApp Width:", appWidth, "\t\tApp Height:", appHeight);
  //
  //Population
  buttonX1 = appWidth*1/4;
  buttonY1 = appHeight*3/4;
  buttonWidth1 = appWidth*1/5;
  buttonHeight1 = appHeight*1/5;
  rectDisplayX = appWidth*1/8;
  rectDisplayY = appHeight*1/8;
  rectDisplayWidth = buttonWidth1;
  rectDisplayHeight = buttonHeight1;
  ellipseX = appWidth*6/8;
  ellipseY = rectDisplayY;
  ellipseXDiameter = appWidth*1/8; //Note: formula not square
  ellipseYDiameter = appHeight*1/8;
  float ellipseRectXCenter = ellipseX + ellipseXDiameter*1/2 ;
  float ellipseRectYCenter = ellipseY + ellipseYDiameter*1/2 ;
  x = ellipseRectXCenter;
  y = ellipseRectYCenter;
  xDiameter = ellipseXDiameter;
  yDiameter = ellipseYDiameter;
  //
  println("Start of Console");
  //
  buttonFont = createFont ("Arial-Black-48", 48);
  PFont.list();
  
}//End setup
//
void draw() 
{
  background(black);
  rect(buttonX1, buttonY1, buttonWidth1, buttonHeight1); //DIV: ("Click me")
  if (rectON==true && ellipseON==false) rect(rectDisplayX, rectDisplayY, rectDisplayWidth, rectDisplayHeight); //DIV:  Display Rectangle
  //rect(ellipseX, ellipseY, ellipseXDiameter, ellipseYDiameter); //DIV:  Display Circle
  if (rectON==false && ellipseON==true) ellipse(x, y, xDiameter, yDiameter);
  
  textFont(buttonFont, 25);
  //
  //Specific Text per button
  text(buttonText1, buttonX1, buttonY1, buttonWidth1, buttonHeight1);
  fill(white);
}//End draw
//
void keyPressed() 
{

}//End keyPressed
//
void mousePressed() 
{
  println("Before the Button:", "\tRect", rectON, "\tEllipse", ellipseON);
   if ( mouseX>=buttonX1 && mouseX<=buttonX1+buttonWidth1 && mouseY>=buttonY1 && mouseY<=buttonY1+buttonHeight1 ) {
  if ( rectON==true) {
    rectON=false;
    ellipseON=true;
  } else {
    rectON=true;
    ellipseON=false;
  }
 }
}//End mousePressed
//
//End setup
