
public class Diabox{
  PFont fontA;
  int vert;
  String content;

  public Diabox(boolean TOPbottom){ //if true: TOP, else: bottom
    if(TOPbottom)
      vert = 10;
    else
      vert = height-10-100;
    fontA = loadFont("fonts/CourierNew36.vlw");
    textAlign(LEFT);
    textFont(fontA, 32);
    content = "blagh";
  }

  public void setText(String newText){
    content = newText;
  }

  public void paint(){
    fill(255);
    rect(10,vert,width-20,100);
    fill(0);
    text(content,20,vert + 30);
    fill(255);
  }
}

