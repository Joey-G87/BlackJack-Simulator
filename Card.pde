public class Card {
  public int number;
  private PVector pos;
  public int SIZE = 200;
  //allows the win decider to know when the player is done with their turn
  public boolean GameComplete;

public void show() {
  //gives the layout to draw the cards
  fill(255,0,0);
  rect(pos.x,pos.y,SIZE,SIZE+50);
  fill(255,0,0);
  rect(pos.x,pos.y,SIZE,SIZE+50);
  //puts the value of each card in the center of the card
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
  //sets the initial value of both players' cards
 number = (int)(random(1,14));
}
public void stand() {
 if (key == 'h' && PlayerCard.number<=21) {
   //slow the game down so it doesn't repeat out of turn
   frameRate(.0000000001);
PlayerCard.number += (int)(random(1,14)); 
noLoop();
Restart();
if (key == 'h') { 
noLoop();
}
  }
  //allows the player to end their turn
  else if (key == 's') {
   PlayerCard.number += 0;
    GameComplete = true;
  }
  else {
    System.out.println("Invalid Input");
}
}
//decides whether the computer should "hit or stand" -based on statistics 
public void CompuBrain() {
  frameRate(2);
  if (DealerCard.number < 14) {
    DealerCard.number += (int)(random(1,14));
}
else {
  DealerCard.number += 0;
}
}
public void Restart() {
  //resets key input, allows for player to "hit" multiple times
  noLoop();
 key = 'a';
 noLoop();
 loop();
}
//win decider based on rule that you can't go over 21 and highest card when both players are done wins
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
