PFont mono;

float randX = random(0, 350);
float randY = random(0, 350);
float randEnd = random(400, 750);
float opacityTime = random(2000, 5000);
float randBeginTime = opacityTime + random(2000, 8000);
float randEndTime =  randBeginTime + 10000 + random(0, 6000);
float opacity = 0;



void setup() {
  size(400, 800);
  frameRate(60);
  background(0);
}

void draw() {
  background(0);

  text("x = ", 10, 20);
  text(randX, 60, 20);
  text("y = ", 10, 40);
  text(randY, 60, 40);
  text("end = ", 10, 60);
  text(randEnd, 60, 60);
  text("bTime = ", 10, 80);
  text(randBeginTime, 60, 80);
  text("eTime = ", 10, 100);
  text(randEndTime, 60, 100);
  text("cTime = ", 10, 120);
  text(" " + millis(), 60, 120);
  mono = createFont("andale.ttf", 12);
  textFont(mono);
  stroke(255);
  fill(255, 255, 255, opacity);

  line(0, 400, 400, 400);

  rect(randX, randY, 100, 100);

  if (millis() >= opacityTime) {
    opacity = opacity + 1;
    if (opacity >= 255) {
      opacity = 255;
    }
  }

  if (millis() > randBeginTime) {
    randY = randY + 0.5;
    if (randY > randEnd) {
      randY = randEnd;
    }
  }

  if (millis() > randEndTime) {
    opacity = opacity - 0.5;
  }
}
