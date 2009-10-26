

public class Sprite{
  public int x; //location of the centre of the tile that sprite is on
  public int y; //  -relative to the board, not the screen.

  public Sprite(int x, int y){
    this.x = x;
    this.y = y;
  }

  // inputs: the offset that the background is at
  //         compared to the screen
  //MIGHT WANT TO USE THE translate() FUNCTION INSTEAD!

  public void paint(int xoff, int yoff){
    ellipseMode(CORNER);
    ellipse(x - xoff,y - yoff - 100,100,200);
  }

  public void keyPressed(char k){
    switch(k){
    case 'w':
      x += 100;
      y -= 50;
      break;
    case 's':
      x -= 100;
      y += 50;
      break;
    case 'a':
      x -= 100;
      y -= 50;
      break;
    case 'd':
      x += 100;
      y += 50;
      break;
    default:
      break;
    }
  }
}
