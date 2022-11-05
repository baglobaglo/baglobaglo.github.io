let video;

let bubble1, bubble2, bubble3;
let edit_rect;
var white1 = 255;
var weather1 = false;
var edit = false;


function setup() {
  createCanvas(800, 800);
  
  video = createCapture(VIDEO);
  video.size(650,650);
  video.hide();
  
  bubble1 = new Bubble(50, 70, 35);
  bubble2 = new Bubble(600, 70, 35);
  bubble3 = new Bubble(350, 70, 35)
  
  edit_rect = new Rectangle(0, 0, 70, 25);
}


function draw() {
  
  image(video, 0, 0);
  bubble1.over();
  bubble1.update();
  bubble1.show();
  
  bubble2.over();
  bubble2.update();
  bubble2.show();
  
  bubble3.over();
  bubble3.update();
  bubble3.show();
  
  edit_rect.show_rect();
  pushStyle();
  textSize(20);
  text("EDIT", 5, 17);
  fill(255);
  popStyle();
  
  if(weather1) {
    fill(255, 0, 0);
    rect(200, 200, 50, 50);
  }
  
  
}

function mousePressed() {
  bubble1.pressed();
  bubble2.pressed();
  bubble3.pressed();
}

function mouseReleased() {
  bubble1.released();
  bubble2.released();
  bubble3.released();
}

function mouseClicked() {
 bubble1.clicked_weather();
 edit_rect.clicked_edit();
}

// ------------------- BUBBLE CLASS ------------------------ //

class Bubble {
  constructor(x, y, r){
    this.dragging = false; // Is the object being dragged?
    this.rollover = false; // Is the mouse over the ellipse?
    this.x = x;
    this.y = y;
    this.r = r;
    this.offsetX = 0;
    this.offsetY = 0;
  }
  
  over() {
    // Is mouse over object
    if (mouseX > this.x - this.r && mouseX < this.x + this.r && mouseY > this.y - this.r && mouseY < this.y + this.r) {
      this.rollover = true;
    } else {
      this.rollover = false;
    }
  }
  
  update() {
    // Adjust location if being dragged
    if (this.dragging) {
      this.x = mouseX + this.offsetX;
      this.y = mouseY + this.offsetY;
    }
  }
  
  show() {
    stroke(0);
    // Different fill based on state
    if (this.dragging) {
      fill(150);
    } else if (this.rollover) {
      fill(210);
    } else {
      fill(white1);
    }
    circle(this.x, this.y, this.r);
  }
  
  
  
  pressed() {
    if (edit) {
    // Did I click on the rectangle?
    if (mouseX > this.x - this.r && mouseX < this.x + this.r && mouseY > this.y - this.r && mouseY < this.y + this.r) {
      this.dragging = true;
      // If so, keep track of relative location of click to corner of rectangle
      this.offsetX = this.x - mouseX;
      this.offsetY = this.y - mouseY;
    }
  }
  }
  
  released() {
    if (edit) {
    // Quit dragging
    this.dragging = false;
  }
  } 
  
  clicked_weather() {
    if(!edit) {
    if (mouseX > this.x - this.r && mouseX < this.x + this.r && mouseY > this.y - this.r && mouseY < this.y + this.r) {
      weather1 = !weather1;   
      console.log("HALLO VÆRKNAPP");
    }
  }
  }
}

// ------------------- BUBBLE CLASS END ------------------------ //

// ------------------- RECTANGLE CLASS ------------------------ //
class Rectangle {
  constructor(x, y, w, h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }
  
  show_rect() {
    stroke(0);
    if(edit) {
      fill(255, 0, 0);
    } else {
      fill(125);
    }
    rect(this.x, this.y, this.w, this.h);
  }
  
  clicked_edit() {
  if (mouseX > this.x && mouseX < this.x + this.w && mouseY > this.y && mouseY < this.y + this.h) {
    edit = !edit;
    console.log("HALLO");
  }
  }
}

// ------------------- RECTANGLE CLASS END ------------------------ //
  
