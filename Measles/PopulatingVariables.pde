

void populatingVariables() {
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
  //
  mouthX = xCenter;
  mouthY = yCenter + height/3.5;
  mouthWidth = smallerDimension*1/4;
  mouthHeight = height/10;
  faceRadius = smallerDimension/2;
  measleDiameter = smallerDimension*1/50;
  //
  textFont = createFont("Calibri", 55);
  //
 
}// End populatingVariables
