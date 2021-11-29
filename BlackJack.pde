Card DealerCard;
Card PlayerCard;


public void setup() {
  size(800,800);
  PVector pos1 = new PVector(50,height/2);
  PVector pos2 = new PVector(width-50,height/2);
  DealerCard = new Card(pos1);
  PlayerCard = new Card(pos2);
  textSize(48);
   textAlign(CENTER,CENTER);
}
public void draw() {
   background(0,255,0);
 DealerCard.show();
 PlayerCard.show();
 whoWon();
}

private void whoWon() {
  if (DealerCard > PlayerCard && PlayerCard.stand) {
    fill(0);
  text("Dealer Wins!",height/2,width/2); 
  }
  if else (
}
