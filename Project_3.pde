boolean inTitle = true;
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
    background(0, 200, 0);
    textSize(50);

    int easyLetter = int(random(1, 3));
    if (easyLetter == 1) {
      text("Type 'a'", 300, 230);
      targetKey = 'a';
    } else if (easyLetter == 2) {
      text("Type 'b'", 300, 230);
      targetKey = 'b';
    }
  }
  if (mouseX >= 235 && mouseX <= 355 && mouseY >= 450 && mouseY <= 500) {
    inTitle = false;
    background(200, 200, 0);
  }
  if (mouseX >= 420 && mouseX <= 540 && mouseY >= 450 && mouseY <= 500) {
    inTitle = false;
    background(200, 0, 0);
  }
}


void keyPressed() {
  if (key == 'a') {
    if (!inTitle) {
      if (targetKey == 'a') {
        background(0, 200, 0);
        textSize(60);
        text("You win!", 300, 230);
      } else {
       inTitle = false;
       background(200, 0, 0);
       textSize(60);
       text("You lose!", 300, 230);
      }
    }
  } else if (key == 'b') {
    if (!inTitle) {
      if (targetKey == 'b') {
        background(0, 200, 0);
        textSize(60);
        text("You win!", 300, 230);
      } else {
       inTitle = false;
       background(200, 0, 0);
       textSize(60);
       text("You lose!", 300, 230);
      }
    }
  } else if (key == 'c') {
    if (!inTitle) {
      if (targetKey == 'c') {
        background(0, 200, 0);
        textSize(60);
        text("You win!", 300, 230);
      } else {
       inTitle = false;
       background(200, 0, 0);
       textSize(60);
       text("You lose!", 300, 230);
      }
    }
  }
}
