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
  
  if (Button_Up) {    // moves dot up one if up button is pressed. 
    ycoord++;
    if (ycoord > 7) {
      ycoord = 0;
    }
  }

  if (Button_Down) {    // moves dot down one if down button is pressed. 
    ycoord--;
    if (ycoord < 0) {
      ycoord = 7;
    }
  }
  
  if (Button_Left) {
    xcoord--;
    if (xcoord < 0) {    // sends dot to right side of board if it goes off the left side. 
       xcoord = 7;
    }
  }
  
  if (Button_Right) {
    xcoord++;  
    if (xcoord > 7) {     // sends dot to other side of board if it
      xcoord = 0;
    }
  }
  delay(50);
}


void boundary() 
{
  for (int i = 0; i < 8; i++) {
    DrawPx(i,0, 15);
    DrawPx(0,i, 15);
    DrawPx(i,7, 15);
    DrawPx(7,i, 15);
  }
}



    
    
