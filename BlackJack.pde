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
  background(0);
 //  background(100,100,300);
 DealerCard.show();
 PlayerCard.show();
 fill(255,0,0);
    textSize(40);
    text("Do you want to hit(h) or stand(s)?",(height/2)-100,(width/2)-100);
     fill(255,0,0);
    textSize(50);
    text("BlackJack Simulator",(height/2)-100,(width/2)-300);
}
