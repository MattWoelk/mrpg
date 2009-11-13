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
    for(int i = 0; i < 30; i++){
      for(int j = 0; j < 20; j++){
        if(tiles[i][j] == '-'){
          fill(255);
        }else if(tiles[i][j] == 'x'){
          fill(100);
        }else
          fill(0);
        rect(i*TILESIZE,j*TILESIZE,TILESIZE,TILESIZE);
      }
    }
    for(int i = -2; i < 13; i++){
      for(int j = -2; j < 20; j++){
        image(a, i*200 -rx, j*100 - ry);
      }
    }
  }
}
