class Move {
  int myX, myY;
  color c;
  
  Move() {
    myX = myY = 150;
    c = color(random(255), random(255), random(255));
  }
  
  void chemotaxis() {
    myX = myX + (int)(Math.random() * 7) - 3;
    myY = myY + (int)(Math.random() * 7) - 3;
  }
  
  void show() {
    noStroke();
    fill(c);
    ellipse(myX, myY, 30, 30);
    
    // Draw a simple dog face
    fill(255); // White color for the face
    ellipse(myX, myY + 5, 25, 25); // Head
    fill(0); // Black color for eyes and nose
    ellipse(myX - 5, myY - 2, 5, 5); // Left eye
    ellipse(myX + 5, myY - 2, 5, 5); // Right eye
    ellipse(myX, myY + 3, 5, 5); // Nose
  }
}

Move[] bacteria;

void setup() {
  size(400, 400);
  bacteria = new Move[1000];
  
  for (int i = 0; i < bacteria.length; i++) {
    bacteria[i] = new Move();
  }
}

void draw() {
  background(0, 255, 0);
  
  for (int i = 0; i < bacteria.length; i++) {
    bacteria[i].chemotaxis();
    bacteria[i].show();
  }
}
