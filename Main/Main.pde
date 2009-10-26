////////////////////////////////////////////
// still very much in a prototype stage.  //
// working on main visual elements        //
//   and how they work together.          //
////////////////////////////////////////////
//             --NOTES--                  //
// GIMP saves the day with proper         //
//   transparency in its .png images.     //
// SVG transparency is still an issue     //
// SVG is the preferred image format      //
//   for this project                     //
////////////////////////////////////////////
//        --THINGS TO CONSIDER--          //
// Painting sprites from furthest away    //
//   to closest.                          //
////////////////////////////////////////////

//import processing.xml.*;
//import geomerative.*;


PImage a;
int rx; //a single reference point (x)
int ry; //                         (y)
Sprite spr1;
Diabox dbox1;

void setup() { //this is where we initialize variables and set up the environment.
  size(800, 600);
  smooth();
  a = loadImage("images/base.png");
  rx = 0;
  ry = 0;
  spr1 = new Sprite(275,575);
  noCursor();
  dbox1 = new Diabox(false);
}

void draw(){ //this is the loop that happens constantly
  rx = mouseX;
  ry = mouseY;
  background(102); 
  for(int i = -2; i < 13; i++){
    for(int j = -2; j < 20; j++){
      image(a, i*200 -rx, j*100 - ry);
    }
  }
  spr1.paint(rx,ry);
  ellipseMode(CENTER);
  ellipse(mouseX,mouseY,20,20);
  dbox1.paint();
}
