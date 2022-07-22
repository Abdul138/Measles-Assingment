//Global Variables

//Face Variables
float xFace, yFace, widthDiameterFace, heightDiameterFace, faceRadius, xCenter, smallerDimension;

//Eye Variables
float xLeftEye, yLeftEye, xRightEye, yRightEye, eyeDiameter;

//Nose Variable
float xNoseBridge, yNoseBridge, xLeftNostril, yLeftNostril, xRightNostril, yRightNostril;

//Mouth Variable
//float xLeftMouth, yLeftMouth, xRightMouth, yRightMouth;
float mouthX, mouthY, mouthWidth, mouthHeight;

// Pupil Variable
float xLeftPupil, yLeftPupil, xRightPupil, yRightPupil, pupilDiameter;

//No Night Mode Variables
float noNightModeHeight, noNightModeWidth, noNightModeX, noNightModeY;

//Night Mode Variables
float nightModeButtonX, nightModeButtonY, nightModeButtonWidth, nightModeButtonHeight;

//Stop Button Variable
float stopButtonX, stopButtonY, stopButtonWidth, stopButtonHeight;

int thack = 25;
//Measle variable
float xMeasle, yMeasle, measleDiameter;
//Color variables
color resetWhite = #FFFFFF;
color red = #FF3434; //color variable is similar to an interger declaration
color backgroundColour;
color black = #000000;
color white = #FFFFFF;
color purple = #FF00FF, buttonFill;
color yellow = #EFFF00;
color blue = #000AFF;
//
//Boolean Variables
Boolean nightMode=true;

//
//String Variables
String stop = "Click to start or stop measles";
String addBlue = "Click to add nightmode color and clear measles";
String noBlue = "Click for no nightmode color and clear measlse";

int textSize;
PFont textFont;
boolean measleOn = false;
//
void setup()
{
  //CANVAS will will be added to later
  size(800, 600); //Landscape
  //
  populatingVariables();

  color backgroundColour =  (nightMode ==true) ?  color(random(255), random(255), 0) : color(random(255), random(255), random(255)); 
  //ternary operator, similar to IF-Else
  //r, g, b
  background(backgroundColour);
  rect(xCenter-faceRadius, 0, 2*faceRadius, smallerDimension);
  ellipse(xFace, yFace, widthDiameterFace, heightDiameterFace);
  //
}//End setup
//
void draw()
{

  //add NightMode
  if (mouseX>nightModeButtonX && mouseX<nightModeButtonX+nightModeButtonWidth && mouseY>nightModeButtonY && mouseY<nightModeButtonY+nightModeButtonHeight ) {
    buttonFill = blue;
  } else {
    buttonFill = white;
  }
  fill(buttonFill);
  //
  nightModeButtonY = height/2 +height/3;  
  nightModeButtonX = width/40;
  nightModeButtonWidth = width/10;
  nightModeButtonHeight = height/14;
  rect(nightModeButtonX, nightModeButtonY, nightModeButtonWidth, nightModeButtonHeight);
  fill(black);
  textAlign(CENTER, CENTER);
  textSize = 10;
  textFont(textFont, textSize);
  text(addBlue, nightModeButtonX, nightModeButtonY, nightModeButtonWidth, nightModeButtonHeight);
  //
  //No Night Mode   
  if (mouseX>noNightModeX && mouseX<noNightModeX+noNightModeWidth && mouseY>noNightModeY && mouseY<noNightModeY+noNightModeHeight ) {
    buttonFill = yellow;
  } else {
    buttonFill = white;
  }
  fill(buttonFill);

  noNightModeY = height/2 + height/6;  
  noNightModeX= width/40;
  noNightModeWidth = width/10;
  noNightModeHeight = height/14;
  rect(noNightModeX, noNightModeY, noNightModeWidth, noNightModeHeight);
  fill(black);
  textAlign(CENTER, CENTER);
  textSize = 10;
  textFont(textFont, textSize);
  text(noBlue, noNightModeX, noNightModeY, noNightModeWidth, noNightModeHeight);
  ;

  //Stop Button

  if (mouseX>stopButtonX && mouseX<stopButtonX+stopButtonWidth && mouseY>stopButtonY && mouseY<stopButtonY+stopButtonHeight ) {
    buttonFill = purple;
  } else {
    buttonFill = white;
  }
  fill(buttonFill);
  stopButtonY = height/2 + height/4;  
  stopButtonX= width/40;
  stopButtonWidth = width/10;
  stopButtonHeight = height/14;
  rect(stopButtonX, stopButtonY, stopButtonWidth, stopButtonHeight);
  fill(black);
  textAlign(CENTER, CENTER);
  textSize = 10;
  textFont(textFont, textSize);
  text(stop, stopButtonX, stopButtonY, stopButtonWidth, stopButtonHeight);



  //
  ellipse(xLeftEye, yLeftEye, eyeDiameter, eyeDiameter);
  ellipse(xRightEye, yRightEye, eyeDiameter, eyeDiameter);
  triangle(xNoseBridge, yNoseBridge, xLeftNostril, yLeftNostril, xRightNostril, yRightNostril);
  strokeCap(SQUARE); //ROUND (default), PROJECT
  strokeWeight(thack);
  ellipse(mouthX, mouthY, mouthWidth, mouthHeight);
  strokeWeight(1); //resets default
  //
  xMeasle = random(xCenter-faceRadius, xCenter+faceRadius);
  yMeasle = random(0, smallerDimension); //if zero is first, the default
  //size(800, 600); //Landscape
  //rect(xCenter-faceRadius, 0, 2*faceRadius, smallerDimension); //Worlking rect()is before FACE is setup()
  fill(red);
  noStroke();

  if (measleOn == true) {  
    ellipse(xMeasle, yMeasle, measleDiameter, measleDiameter);
    stroke(1); //resets to defult
    fill(resetWhite);
  }

  //
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {

  if ( mouseX>stopButtonX && mouseX<stopButtonX+stopButtonWidth && mouseY>stopButtonY && mouseY<stopButtonY+stopButtonHeight ) {
    if (measleOn == true) {
      measleOn = false;
    } else if (measleOn == false) {
      measleOn = true;
    }
  }




  //Change to NigtMode Fill
  if (mouseX>nightModeButtonX && mouseX<nightModeButtonX+nightModeButtonWidth && mouseY>nightModeButtonY && mouseY<nightModeButtonY+nightModeButtonHeight ) { //NIGHT Mode FALSE
    backgroundColour =color(random(255), random(255), random(255)); //ternary operator, similar to IF-Else
    background(backgroundColour); //r, g, b
    fill(resetWhite);
    ellipse(xFace, yFace, widthDiameterFace, heightDiameterFace);
  } // End Left Mouse Button
  //
  //Change to noNightModeFill
  if (mouseX>noNightModeX && mouseX<noNightModeX+noNightModeWidth && mouseY>noNightModeY && mouseY<noNightModeY+noNightModeHeight   ) {
    backgroundColour =   color(random(255), random(255), 0) ; //ternary operator, similar to IF-Else
    background(backgroundColour); //r, g, b
    fill(resetWhite);
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
