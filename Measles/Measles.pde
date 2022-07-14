//Global Variables
//
float xFace, yFace, widthDiamerterFace, heightDiamerterFace;
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

}//End draw
//
void keyPressed() {
}// End keypressed
//
void mousePressed() {
}//End mousePressed
//
//End MAIN Program
