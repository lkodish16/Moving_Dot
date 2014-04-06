#include <MeggyJrSimple.h>

void setup()
{
  MeggyJrSimpleSetup();
}

int xcoord = 4;
int ycoord = 4;

void loop()
{
  MoveDot();
  boundary();
}




void MoveDot()
{
  DrawPx(xcoord, ycoord, Red);
  DisplaySlate();
  CheckButtonsPress();
  ClearSlate();
  delay(50);
  
  if (Button_Up) { // moves dot up one if up button is pressed.
    ycoord++;
  }

  if (Button_Down) {    // moves dot down one if down button is pressed.
    ycoord--;
  }
  
  if (Button_Left) {    // moves dot one to the left if left button isp pressed.
    xcoord--;
  }
  
  if (Button_Right) {    // moves dot one to the right if right button is pressed.     
    xcoord++;
  }
  
  if (xcoord < 1) {    // dot can't go on or past the left side of the boundary. 
    xcoord = 1;
  }
  
  if (xcoord > 6) {    // dot can't go on or past the right side of the boundary.
    xcoord = 6; 
  }
   
  if (ycoord < 1) {    // dot can't go on or past the bottom side of the boundary.
    ycoord = 1;
  }
  
  if (ycoord > 6) {    // dot can't go on or past the top side of the boundary.
    ycoord = 6;
  }
}


void boundary()    // creates a square boundry that goes around the board. 
{
  for (int i = 0; i < 8; i++) {
    DrawPx(i,0, 15);    // left side of the square.
    DrawPx(0,i, 15);    // bottom side of the square. 
    DrawPx(i,7, 15);    // top side of the square.
    DrawPx(7,i, 15);    // right side of the square. 
  }
}
