PFont mono;
PImage img[];
int nPics;
int randImage = int(random(0, 6));

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

  nPics = 6;
  img = new PImage[nPics];
  img[0] = loadImage("bella1.jpg");
  img[1] = loadImage("bella2.jpg");
  img[2] = loadImage("bella3.jpg");
  img[3] = loadImage("bella4.jpg");
  img[4] = loadImage("bella5.jpg");
  img[5] = loadImage("bella6.jpg");
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
  text("fRate = ", 10, 140);
  text(frameRate, 60, 140);
  text("image = ", 10, 160);
  text(randImage, 60, 160);
  mono = createFont("andale.ttf", 12);
  textFont(mono);
  stroke(255);
  fill(255, 255, 255, opacity);

  line(0, 400, 400, 400);

  image(img[randImage], randX, randY);
  img[randImage].resize(150, 0);
  tint(255, opacity);

  //rect(randX, randY, 100, 100);

  if ((millis() > opacityTime) && ( millis() < randBeginTime)) {
    opacity = opacity + 1;
  }

  if (millis() > randBeginTime) {
    randY = randY + 0.5;
    if (randY > randEnd) {
      randY = randEnd;
    }
  }

  if (millis() > randEndTime) {
    opacity = opacity - 1;
  }
}
