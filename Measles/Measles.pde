//Global Variables
float xFace, yFace, widthDiameterFace, heightDiameterFace, faceRadius, xCenter, smallerDimension;
float xLeftEye, yLeftEye, xRightEye, yRightEye, eyeDiameter;
float xNoseBridge, yNoseBridge, xLeftNostril, yLeftNostril, xRightNostril, yRightNostril;
float xLeftMouth, yLeftMouth, xRightMouth, yRightMouth;
int thack = 50;
float xMeasle, yMeasle, measleDiameter;
color resetWhite = #FFFFFF;
color red = #FF3434; //color variable is similar to an interger declaration
color backgroundColour;
float xLeftPupil, yLeftPupil, xRightPupil, yRightPupil, pupilDiameter;
Boolean nightMode=true;
//
void setup()
{
  //CANVAS will will be added to later
  size(800, 600); //Landscape
  //
  //Population
  xCenter = width/2;
  float yCenter = height/2;
  xFace = xCenter;
  yFace = yCenter;
  if ( width >= height ) {
    smallerDimension = height;
  } else {
    smallerDimension = width;
  }//End dimension choice
  widthDiameterFace = smallerDimension;
  heightDiameterFace = smallerDimension;
  xLeftEye = xCenter-smallerDimension*1/4;
  yLeftEye = yCenter-smallerDimension*1/4;
  xRightEye = xCenter+smallerDimension*1/4;
  yRightEye = yCenter-smallerDimension*1/4;
  eyeDiameter = smallerDimension*1/8;
  //
  pupilDiameter = smallerDimension*1/12;
  xNoseBridge = xCenter;
  yNoseBridge = yCenter-smallerDimension*1/8;
  xLeftNostril = xCenter-smallerDimension*1/8; 
  yLeftNostril = yCenter+smallerDimension*1/8;
  xRightNostril = xCenter+smallerDimension*1/8;
  yRightNostril = yLeftNostril;
  xLeftMouth = xLeftEye;
  yLeftMouth = yCenter+smallerDimension*1/4;
  xRightMouth = xRightEye;
  yRightMouth = yLeftMouth;
  faceRadius = smallerDimension/2;
  measleDiameter = smallerDimension*1/50;
  //

  color backgroundColour =  (nightMode ==true) ?  color(random(255), random(255), 0) : color(random(255), random(255), random(255)); 
  ; //ternary operator, similar to IF-Else
  //r, g, b
  background(backgroundColour);
  ellipse(xFace, yFace, widthDiameterFace, heightDiameterFace);
  //
}//End setup
//
void draw()
{

  ellipse(xLeftEye, yLeftEye, eyeDiameter, eyeDiameter);
  ellipse(xRightEye, yRightEye, eyeDiameter, eyeDiameter);
  triangle(xNoseBridge, yNoseBridge, xLeftNostril, yLeftNostril, xRightNostril, yRightNostril);
  strokeCap(SQUARE); //ROUND (default), PROJECT
  strokeWeight(thack);
  line(xLeftMouth, yLeftMouth, xRightMouth, yRightMouth);
  strokeWeight(1); //resets default
  //
  xMeasle = random(xCenter-faceRadius, xCenter+faceRadius);
  yMeasle = random(0, smallerDimension); //if zero is first, the default
  fill(red);
  noStroke();
  ellipse(xMeasle, yMeasle, measleDiameter, measleDiameter);
  stroke(1); //resets to defult
  fill(resetWhite);
  //
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
  //Technically, there are 4 ways to code a mouse button press
  if (mouseButton == LEFT) { //NIGHT Mode FALSE
    backgroundColour =color(random(255), random(255), random(255)); //ternary operator, similar to IF-Else
    background(backgroundColour); //r, g, b
    ellipse(xFace, yFace, widthDiameterFace, heightDiameterFace);
  } // End Left Mouse Button
  if (mouseButton == RIGHT) {
      backgroundColour =   color(random(255), random(255), 0) ; //ternary operator, similar to IF-Else
    background(backgroundColour); //r, g, b
    ellipse(xFace, yFace, widthDiameterFace, heightDiameterFace);
  } //End Right Mouse Button
  //if (mouseButton == WHEEL) {}// End Mouse WHEEL
  //
  /* For any button
  if (nightMode==false) { //NightMode Swiych
    nightMode = false;
  } else {
    nightMode = false;
  } //End Nightmode switch
  //
  backgroundColour =  (nightMode ==true) ?  color(random(255), random(255), 0) : color(random(255), random(255), random(255)); ; //ternary operator, similar to IF-Else
  background(backgroundColour); //r, g, b
  ellipse(xFace, yFace, widthDiameterFace, heightDiameterFace);
  */
}//End mousePressed
//
//End MAIN Program
