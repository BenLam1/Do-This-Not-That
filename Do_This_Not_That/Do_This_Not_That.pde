//Global Variables
float buttonX1, buttonY1, buttonWidth1, buttonHeight1;
float buttonX2, buttonY2, buttonWidth2, buttonHeight2;
//
void setup () 
{
  //Display Geometry
  fullScreen();
  println (width, height, displayWidth, displayHeight);
  String ls="Landscape or Square", p="portrait", DO="DisplayOrientation:", instruct="Bru, turn your phone";
  int appWidth = displayWidth;
  int appHeight = displayHeight;
  String orientation = ( appWidth >= appHeight ) ? ls : p ;
  println (DO, orientation);
  println(appWidth, appHeight);
  //
  /*Population
  buttonX1 = ;
  buttonY1 = ;
  buttonWidth1 = ;
  buttonHeight1 = ;
  buttonX2 = ;
  buttonY2 = ;
  buttonWidth2 = ;
  buttonHeight2 = ;
  */
}//End setup
//
void draw() 
{
  //rect(buttonX1, buttonY, buttonWidth1, buttonHeight1); //DIV: ("Click me")
  //rect(buttonX2, buttonY2, buttonWidth2, buttonHeight2); //DIV: "Or Me"
  //rect(); //DIV:  Display Rectangle
  //rect(); //DIV:  Display Circle
}//End draw
//
void keyPressed() {}//End keyPressed
//
void mousePressed() {}//End mousePressed
//
//End setup
