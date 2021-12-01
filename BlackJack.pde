Card DealerCard;
Card PlayerCard;

public void setup() {
  size(800,800);
  PVector pos1 = new PVector(50,height/2);
  PVector pos2 = new PVector(width-250,height/2);
  DealerCard = new Card(pos1);
  PlayerCard = new Card(pos2);
  textSize(48);
   textAlign(CENTER,CENTER);
}
public void draw() {
   background(50,200,50);
 DealerCard.show();
 PlayerCard.show();
 fill(100);
    textSize(20);
    text("Do you wish to hit(h) or stand(s)?",(height/2)-100,(width/2)-100);
    whoWon();
}

private void whoWon() {
  if (DealerCard.number > PlayerCard.number && Card.GameComplete) {
    fill(0);
  text("Dealer Wins!",height/2,width/2); 
  }
  else if (DealerCard.number < PlayerCard.number && stand(GameComplete)) {
    text("Dealer Wins!",height/2,width/2);
  }
}
