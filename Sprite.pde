
public class Sprite{
  public int x; //location of the centre of the tile that sprite is on
  public int y; //  -relative to the board, not the screen.
  public int xsp;
  public int ysp;
  public int multiplier;
  boolean keys[];

  public Sprite(int x, int y){
    this.x = x;
    this.y = y;
    xsp = 0;
    ysp = 0;
    multiplier = 2;
    keys = new boolean[4];

    for(int i = 0; i < 4; i++){
      keys[i] = false;
    }

  }

  // inputs: the offset that the background is at
  //         compared to the screen
  //MIGHT WANT TO USE THE translate() FUNCTION INSTEAD!

  public void paint(int xoff, int yoff){
    fill(255);
    ellipseMode(CORNER);
    for(int i = 0; i < 4; i++){
      if(keys[i]){
        y += ysp*multiplier;
        x += xsp*multiplier;
      }
    }
    ellipse(x - xoff,y - yoff - 100,100,200);
  }

  public void keyPressed(char k){
    switch(k){
    case 'w':
      if(!keys[0]){
        xsp += 2;
        ysp += -1;
      }
      keys[0] = true;
      break;
    case 's':
      if(!keys[1]){
        xsp += -2;
        ysp += 1;
      }
      keys[1] = true;
      break;
    case 'a':
      if(!keys[2]){
        xsp += -2;
        ysp += -1;
      }
      keys[2] = true;
      break;
    case 'd':
      if(!keys[3]){
        xsp += 2;
        ysp += 1;
      }
      keys[3] = true;
      break;
    default:
      break;
    }
  }

  public void keyReleased(char k){
  switch(k){
    case 'w':    //instead of all these cases and junk, just make a matrix of 1's and -1's and do some multiplying. <-- less code.
      if(keys[0]){
        xsp += -2;
        ysp += 1;
      }
      keys[0] = false;
      break;
    case 's':
      if(keys[1]){
        xsp += 2;
        ysp += -1;
      }
      keys[1] = false;
      break;
    case 'a':
      if(keys[2]){
        xsp += 2;
        ysp += 1;
      }
      keys[2] = false;
      break;
    case 'd':
      if(keys[3]){
        xsp += -2;
        ysp += -1;
      }
      keys[3] = false;
      break;
    default:
      break;
    }
  }
}
