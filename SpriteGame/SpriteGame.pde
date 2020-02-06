
// this is your player, they're a blob and they're kinda boring.
Blob player1;
Blob player2;

void setup()
{
  size(500, 500);
  
  // Blob parameters are: 
  // x (px), y (px), radius (px), 
  // x-speed (px/frame), y-speed (px/frame), and color.
  player1 = new Blob(100, 100, 30, 1.25, 1.5, color(150, 0, 255));
  player2 = new Blob(200, 200, 15, 2.5, 3, color(150, 150, 255));
}

void draw()
{
  background(255,255,255);
  
  // make the player move automatically.
  player1.chase(player2);
  player2.followMouse();
  
  // draw the player on the screen.
  player1.drawSprite();
  player2.drawSprite();
}
