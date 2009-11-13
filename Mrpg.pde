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


PImage a;
int rx; //a single reference point (x)
int ry; //                         (y)

//ELEMENTS
Sprite spr1;
Diabox dbox1;
Level level;


void setup() {
  size(800, 600);
  smooth();
  a = loadImage("images/base.png");
  spr1 = new Sprite(275,575);

  rx = 0;
  ry = 0;

  noCursor();
  dbox1 = new Diabox(false);
  level = new Level(0);
}


void draw(){
  background(102); 
  level.paint();
  rx = mouseX;
  ry = mouseY;
  spr1.paint(rx,ry);
  ellipseMode(CENTER);
  ellipse(mouseX,mouseY,20,20);
  dbox1.paint();
}


void keyPressed(){
  char k = (char)key;
  spr1.keyPressed(k);
}


void keyReleased(){
  char k = (char)key;
  spr1.keyReleased(k);
}
