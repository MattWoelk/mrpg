

public class Sprite{
  public int x; //location of the centre of the tile that sprite is on
  public int y; //  -relative to the board, not the screen.
  public int xsp;
  public int ysp;
  public int multiplier;

  public Sprite(int x, int y){
    this.x = x;
    this.y = y;
    xsp = 0;
    ysp = 0;
    multiplier = 2;
  }

  // inputs: the offset that the background is at
  //         compared to the screen
  //MIGHT WANT TO USE THE translate() FUNCTION INSTEAD!

  public void paint(int xoff, int yoff){
    ellipseMode(CORNER);
    x += xsp*multiplier;
    y += ysp*multiplier;
    ellipse(x - xoff,y - yoff - 100,100,200);
  }

  public void keyPressed(char k){
    switch(k){
    case 'w':
      xsp += 2;
      ysp += -1;
      break;
    case 's':
      xsp += -2;
      ysp += 1;
      break;
    case 'a':
      xsp += -2;
      ysp += -1;
      break;
    case 'd':
      xsp += 2;
      ysp += 1;
      break;
    default:
      break;
    }
  }

  public void keyReleased(char k){
  switch(k){
    case 'w':
      xsp += -2;
      ysp += 1;
      break;
    case 's':
      xsp += 2;
      ysp += -1;
      break;
    case 'a':
      xsp += 2;
      ysp += 1;
      break;
    case 'd':
      xsp += -2;
      ysp += -1;
      break;
    default:
      break;
    }
  }
}
