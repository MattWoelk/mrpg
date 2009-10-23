
public class Menu{
  public int x;
  public int y;
  //PShape base_tile;

  public Menu(int x, int y){
    this.x = x;
    this.y = y;
    //base_tile = loadShape("base.svg"); 
  }

  public void paint(){
    rect(0,0,x,y);
    //shape(base_tile, 100, 100);
  }
}
