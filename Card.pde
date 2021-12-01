public class Card {
  public int number;
  private PVector pos;
  public int SIZE = 200;
  public boolean GameComplete;

public void show() {
  fill(255);
  rect(pos.x,pos.y,SIZE,SIZE+50);
   fill(255);
  rect(pos.x,pos.y,SIZE,SIZE+50);
  fill(255,0,0);
    textSize(48);
   textAlign(CENTER,CENTER);
   text(number,pos.x+100,pos.y+100);
   stand();
   CompuBrain();
}
public Card(PVector p) {
  pos = p;
 number = (int)(random(1,14));
}
public void stand() {
  if (key == 'h') {
   PlayerCard.number += (int)(random(1,14)); 
   noLoop();
  }
  else if (key == 's') {
   PlayerCard.number += 0;
   noLoop();
   GameComplete = true;
  }
  else {
    System.out.println("Invalid Input");
}
}
public void CompuBrain() {
  frameRate(2.5);
  if (DealerCard.number < 15) {
    DealerCard.number += (int)(random(1,14));
}
else {
  DealerCard.number += 0;
}
}
}
