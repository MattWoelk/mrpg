public class Level{
  String lines[];
  char tiles[][]; 
  int TILESIZE;


  public Level(int num){
    TILESIZE = 60;
    tiles = new char[100][100];
    
    load(num);
  }

  public void load(int num){
    lines = loadStrings("levels/level" + num + ".txt");
    for(int i = 0; i < lines.length; i++){
      char temp[] = new char[100];
      for(int j = 0; j < lines[i].length(); j++){
        //X AND Y AND BACKWARDS...........
        tiles[j][i] = lines[i].charAt(j);
      }
    }
  }

  public void paint(){
    //IMP: only draw what's on-screen?
    for(int i = 0; i < tiles.length; i++){
      for(int j = 0; j < tiles[i].length; j++){
        if(tiles[i][j] == 'B'){
          image(a, i*100 + j*100 -2*rx, 4*50 - i*50 + j*50 -2*ry + 500);
        }else if(tiles[i][j] == 'v'){
          //rect(i*200 - 2*rx, j*100 - 2*ry,TILESIZE,TILESIZE);
        }else{
          fill(0);
        }
      }
    }
  }
}
