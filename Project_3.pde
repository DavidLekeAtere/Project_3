boolean inTitle = true;
boolean gameOver = false; // <--- Added this to lock the game when it ends
char targetKey;

void setup () {
  size(600, 600);
}

void draw () {
  if (inTitle) {
    background(0); // Changed background to black

    // --- Screen Layouts ---

    textSize(40);

    // Title text in white
    fill(255);
    text("Typing Test, select a difficulty", 60, 125);

    // Easy Button (Green)
    fill(46, 204, 113);
    rect(50, 450, 120, 50);

    // Medium Button (Yellow)
    fill(241, 196, 15);
    rect(235, 450, 120, 50);

    // Hard Button (Red)
    fill(231, 76, 60);
    rect(420, 450, 120, 50);

    // Text inside buttons in white
    textSize(30);
    fill(255);
    text("Easy", 80, 480);
    text("Medium", 250, 480);
    text("Hard", 450, 480);
  }
}

// --- Button Clicks ---

void mousePressed () {
  if (mouseX >= 50 && mouseX <= 170 && mouseY >= 450 && mouseY <= 500) {
    inTitle = false;
    gameOver = false; // <--- Reset game over when starting fresh
    background(0, 200, 0);
    textSize(50);

    int easyLetter = int(random(1, 3));
    if (easyLetter == 1) {
      text("Type 'a'", 190, 230);
      targetKey = 'a';
    } else if (easyLetter == 2) {
      text("Type 'b'", 190, 230);
      targetKey = 'b';
    }
  }
  if (mouseX >= 235 && mouseX <= 355 && mouseY >= 450 && mouseY <= 500) {
    inTitle = false;
    gameOver = false; // <--- Reset game over when starting fresh
    background(200, 200, 0);
    textSize(50);

    int mediumLetter = int(random(1, 5));
    if (mediumLetter == 1) {
      text("Type 'a'", 190, 230);
      targetKey = 'a';
    } else if (mediumLetter == 2) {
      text("Type 'b'", 190, 230);
      targetKey = 'b';
    } else if (mediumLetter == 3) {
      text("Type 'c'", 190, 230);
      targetKey = 'c';
    } else if (mediumLetter == 4) {
      text("Type 'd'", 190, 230);
      targetKey = 'd';
    }
  }
  if (mouseX >= 420 && mouseX <= 540 && mouseY >= 450 && mouseY <= 500) {
    inTitle = false;
    gameOver = false; // <--- Reset game over when starting fresh
    background(200, 0, 0);
    textSize(50);
    
    int hardLetter = int(random(1, 7));
    if (hardLetter == 1) {
      text("Type 'a'", 190, 230);
      targetKey = 'a';
    } else if (hardLetter == 2) {
      text("Type 'b'", 190, 230);
      targetKey = 'b';
    } else if (hardLetter == 3) {
      text("Type 'c'", 190, 230);
      targetKey = 'c';
    } else if (hardLetter == 4) {
      text("Type 'd'", 190, 230);
      targetKey = 'd';
    } else if (hardLetter == 5) {
      text("Type 'e'", 190, 230); 
      targetKey = 'e';
    } else if (hardLetter == 6) {
      text("Type 'f'", 190, 230);
      targetKey = 'f';
    }
  }
}

// --- Key Presses ---

void keyPressed() {
  // Only check key presses if we are playing (not in title AND game is not over)
  if (!inTitle && !gameOver) {
    if (key == targetKey) {
      background(0, 200, 0);
      textSize(60);
      text("You win!", 190, 230);
      gameOver = true; // <--- Lock the game so keys stop working
    } else {
      background(200, 0, 0);
      textSize(60);
      text("You lose!", 190, 230);
      gameOver = true; // <--- Lock the game so keys stop working
    }
  }
}
