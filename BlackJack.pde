//distinguishes the player's card from the dealer's card
Card DealerCard;
Card PlayerCard;

public void setup() {
  size(800,800);
  //positions the cards in the scene
  PVector pos1 = new PVector(50,height/2);
  PVector pos2 = new PVector(width-250,height/2);
  DealerCard = new Card(pos1);
  PlayerCard = new Card(pos2);
  textSize(48);
   textAlign(CENTER,CENTER);
}
public void draw() {
  background(0);
  //draws the cards based on the layout in "Card" 
 DealerCard.show();
 PlayerCard.show();
 //puts question on screen directed to player on whether they want to "hit" or "stand" as well as how to do so
 fill(255,0,0);
    textSize(40);
    text("Do you want to hit(h) or stand(s)?",(height/2)-100,(width/2)-100);
    //puts the title of the game on the screen 
     fill(255,0,0);
    textSize(50);
    text("BlackJack Simulator",(height/2)-100,(width/2)-300);
}
