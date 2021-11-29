public class Card {
  public int number = 0;
  private PVector pos;
  private int SIZE = 200;
}
public void show() {
  fill(255);
  rect(pos.x,pos.y,SIZE,SIZE+150);
   fill(255);
  rect(pos.x,pos.y,SIZE,SIZE+150);
    textSize(48);
   textAlign(CENTER,CENTER);
   text(number,pos.x,pos.y);
}
public Card(PVector p) {
  pos = p;
 int number = (int)(random(2,12));
}
