public class Card {
  public int number;
  private PVector pos;
  public int SIZE = 200;
  public boolean GameComplete;

public void show() {
  fill(0);
  rect(20,270,570,70);
  fill(255,0,0);
  rect(pos.x,pos.y,SIZE,SIZE+50);
  fill(255,0,0);
  rect(pos.x,pos.y,SIZE,SIZE+50);
  fill(0);
    textSize(48);
   textAlign(CENTER,CENTER);
   text(number,pos.x+100,pos.y+100);
   stand();
   CompuBrain();
   whoWon();
}
public Card(PVector p) {
  pos = p;
 number = (int)(random(1,14));
}
public void stand() {
 if (key == 'h') {
PlayerCard.number += (int)(random(1,14)); 
Restart();
if (key == 'h') {
  
  GameComplete = true;
}
  }
  else if (key == 's') {
   PlayerCard.number += 0;
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
public void Restart() {
  //resets key input, allows for player to "hit" multiple times
 key = 'a';
 GameComplete = false;
}
  private void whoWon() {
  if (DealerCard.number>21) {
    fill(random(0,255),random(0,255),random(0,255));
    text("Player Wins!",height/2,width/2);
  }
  else if (PlayerCard.number>21) {
    fill(random(0,255),random(0,255),random(0,255));
  text("Dealer Wins!",height/2,width/2); 
  }
  else if (DealerCard.number > PlayerCard.number && GameComplete) {
    fill(random(0,255),random(0,255),random(0,255));
  text("Dealer Wins!",height/2,width/2); 
  }
  else if (DealerCard.number < PlayerCard.number && GameComplete) {
    fill(random(0,255),random(0,255),random(0,255));
    text("Player Wins!",height/2,width/2);
  }
  else if (DealerCard.number == PlayerCard.number && GameComplete) {
    fill(255);
    text("Tie",height/2,width/2);
  }
}
}
