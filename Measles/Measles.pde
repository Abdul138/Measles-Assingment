//Global Variables
//
float xFace, yFace, widthDiamerterFace, heightDiamerterFace;
float xLeftEye, yLeftEye, eyeDiameter, xRightEye, yRightEye;
float xMeasle, yMealse, measleDiameter;
float xNoseBridge, yNoseBridge, xLeftNostril, yLeftNostril, xRightNostril, yRightNostril;
float xLeftMouth, yLeftMouth, xRightMouth, yRightMouth;

void setup() {
  //CANVAS will be added to later
  size(900, 600); //Landscape
  //
  //Population
  xFace = width/2;
  yFace = height/2;
  float smallerDimension;
  if (width >= height){
    smallerDimension = height;
  } else {
    smallerDimension = width;
  }
  widthDiamerterFace = smallerDimension;
  heightDiamerterFace = smallerDimension;
  
}//End setup
//
void draw() {
  //Circle as a face, center of CANVAS
  
  ellipse(xFace, yFace, widthDiamerterFace, heightDiamerterFace);
  ellipse(xLeftEye, yLeftEye, eyeDiameter, eyeDiameter);  // Left eye
  ellipse(xRightEye, yRightEye, eyeDiameter, eyeDiameter); // Right eye
  triangle(xNoseBridge, yNoseBridge, xLeftNostril, yLeftNostril, xRightNostril, yRightNostril); // Nose
  line(xLeftMouth, yLeftMouth, xRightMouth, yRightMouth); // Mouth
  //
  ellipse(xMeasle, yMealse, measleDiameter, measleDiameter);
  
  

}//End draw
//
void keyPressed() {
}// End keypressed
//
void mousePressed() {
}//End mousePressed
//
//End MAIN Program
