import ddf.minim.*;
Minim minim;
AudioPlayer cat;
AudioPlayer cow;
AudioPlayer dog;
AudioPlayer duck;
AudioPlayer goat;
AudioPlayer horse;
AudioPlayer ostrich;
AudioPlayer rabbit;
AudioPlayer rooster;

// declaraing variables
color a = color(0, 0, 500);
color c = color(255, 204, 0);
PImage img;
PFont font;

//canvas setup
void setup(){
  size (550 ,550);
  img = loadImage("file.jpg");
  font = loadFont("MVBoli-48.vlw");
  minim = new Minim(this);
  
  cat = minim.loadFile("cat.wav");
  cow = minim.loadFile("cow.wav");
  dog = minim.loadFile("dog.wav");
  duck = minim.loadFile("duck.wav");
  goat = minim.loadFile("goat.wav");
  horse = minim.loadFile("horse.wav");
  ostrich = minim.loadFile("ostrich.wav");
  rabbit= minim.loadFile("rabbit.wav");
  rooster = minim.loadFile("rooster.wav");
  
}

void draw(){
  background(a);
  image(img,80,60);
  textFont(font, 48);
  fill(0,0,0);
  textAlign(CENTER);
  textSize(38);
  text("Animals SoundBoard", 275,50);
  //textAlign(LEFT);
  textSize(23);
  text("press the letter in the picture to play their sound", 280, 538);
  
}

//KeyBoard Input
void keyPressed() {
    if (key == 'c' || key == 'C') {
      cat.rewind();
      cat.play();
    }
  if (key == 'd' || key == 'D') {
      dog.rewind();
      dog.play();
    }
    if (key == 'g' || key == 'G') {
      goat.rewind();
      goat.play();
    }
    if (key == 'h' || key == 'H') {
      horse.rewind();
      horse.play();
    }
    if (key == 'r' || key == 'R') {
      rooster.rewind();
      rooster.play();
    }
    if (key == 'o' || key == 'O') {
      ostrich.rewind();
      ostrich.play();
    }
    if (key == 'q' || key == 'Q') {
      duck.rewind();
      duck.play();
    }
    if (key == 'w' || key == 'W') {
      cow.rewind();
      cow.play();
    }
    if (key == 'e' || key == 'E') {
      rabbit.rewind();
      rabbit.play();
    }
    
}
    
 
//Mouse Input for multicolors and gameplay element
void mouseClicked() {
  if (a == 500) {
    a = c;
  } else {
      a = 500;
 }
}
