int screen = 0;
String targetKey;
String[] easyPool = {"a", "z"};
String[] mediumPool = {"b", "d", "r", "q"};
String[] Hardpool = {"l", "v", "d", "a", "k", "m"};

void setup () {
  size(600, 600);

  // FIXED: Gives targetKey an initial letter so it is not null when the game draws
  int index = int(random(easyPool.length));
  targetKey = easyPool[index];
}

void draw () {
  background(#FFFFE0);

  if (screen == 0) {
    drawMainMenu();
  } else if (screen == 1) {
    drawEasyGame();
  } else if (screen == 2) {
    drawMediumGame();
  } else if (screen == 3) {
    drawHardGame();
  }
}

// --- Screen Layouts ---

void drawMainMenu() {
  textSize(40);
  fill(0, 0, 0);
  rect(50, 450, 120, 50);
  rect(235, 450, 120, 50);
  rect(420, 450, 120, 50);
  text("Typing Test, select a difficulty", 60, 125);
  textSize(30);
  fill(255, 255, 255);
  text("Easy", 80, 480);
  text("Medium", 250, 480);
  text("Hard", 450, 480);
}

void drawEasyGame() {
  fill(0);
  textSize(40);
  text("Type", 150, 200);
  textSize(100);
  text(targetKey, 270, 350); // Shows the target letter
}

void drawMediumGame() {
  fill(0);
  textSize(40);
  text("Medium Mode Active!", 120, 200);
  textSize(100);
  text(targetKey, 270, 350); // FIXED: Shows the medium letter
}

void drawHardGame() {
  fill(0);
  textSize(40);
  text("Hard Mode Active!", 150, 200);
  textSize(100);
  text(targetKey, 270, 350); // FIXED: Shows the hard letter
}

// --- Button Clicks ---

void mousePressed () {
  if (screen == 0) {
    int easyMinX = 50;
    int easyMaxX = easyMinX + 120;
    int easyMinY = 450;
    int easyMaxY = easyMinY + 50;

    int mediumMinX = 235;
    int mediumMaxX = mediumMinX + 120;
    int mediumMinY = 450;
    int mediumMaxY = mediumMinY + 50;

    int hardMinX = 420;
    int hardMaxX = hardMinX + 120;
    int hardMinY = 450;
    int hardMaxY = hardMinY + 50;

    if (mouseX >= easyMinX && mouseX <= easyMaxX && mouseY >= easyMinY && mouseY <= easyMaxY) {
      screen = 1;
      // Pick a starting letter for Easy mode immediately
      int index = int(random(easyPool.length));
      targetKey = easyPool[index];
    }
    if (mouseX >= mediumMinX && mouseX <= mediumMaxX && mouseY >= mediumMinY && mouseY <= mediumMaxY) {
      screen = 2;
      // Pick a starting letter for Medium mode immediately
      int index = int(random(mediumPool.length));
      targetKey = mediumPool[index];
    }
    if (mouseX >= hardMinX && mouseX <= hardMaxX && mouseY >= hardMinY && mouseY <= hardMaxY) {
      screen = 3;
      // Pick a starting letter for Hard mode immediately
      int index = int(random(Hardpool.length));
      targetKey = Hardpool[index];
    }
  }
}

void keyPressed() {
  if (screen >= 1) {
    String playerGuess = str(key);

    if (playerGuess.equals(targetKey)) {
      // FIXED: Picks a new letter from the matching pool depending on the active screen
      if (screen == 1) {
        int index = int(random(easyPool.length));
        targetKey = easyPool[index];
      } else if (screen == 2) {
        int index = int(random(mediumPool.length));
        targetKey = mediumPool[index];
      } else if (screen == 3) {
        int index = int(random(Hardpool.length));
        targetKey = Hardpool[index];
      }
    }
  }
}
