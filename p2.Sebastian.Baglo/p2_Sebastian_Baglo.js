let video;
let colorPicker;

//booleans
let bubble1, bubble2, bubble3;
let edit_rect;
var weather1 = false;
var clock = false;
var edit = false;
var to_do = false;
var sleep = false;
var light_source = false;

//different images used
let img;
let img_weather;
let img_to_do;
let img_bed_room;
let img_cloud_small;
let img_cloud_large;
let img_usa;
let img_color1;

//weather today
let temprature;
let feels_like;
let weather;
let country;
let json;

//forecast
let forecast_temprature1;
let forecast_temprature2;
let forecast_temprature3;

let forecast_weather1;
let forecast_weather2;
let forecast_weather3;

let json2;

function preload() {
img = loadImage('clock_color.png');
img_weather = loadImage('weather_icon.png');
img_to_do = loadImage('to_do.png');
img_bed_room = loadImage('bed_room_x.png');
img_cloud_small = loadImage('cloud_small.png');
img_cloud_large = loadImage('cloud_large.png');
img_usa = loadImage('usa.png');
img_color1 = loadImage('color1.png');

//json API data
let url = "https://api.openweathermap.org/data/2.5/weather?q=Lubbock&units=imperial&appid=d8454fca2ed0c662f7ff64141c7c0687";
json = loadJSON(url);

let url2 = "https://api.openweathermap.org/data/2.5/forecast?q=Lubbock&units=imperial&appid=d8454fca2ed0c662f7ff64141c7c0687";
json2 = loadJSON(url2);
}


function setup() {
  createCanvas(640, 480);
  angleMode(DEGREES);
  
  video = createCapture(VIDEO);
  video.size(700,700);
  video.hide();
  
  
  colorPicker = createColorPicker('#ed255d');
  colorPicker.position(640, 0);
  
  temprature = json.main.temp;
  feels_like = json.main.feels_like;
  weather = json.weather[0].description;
  country = json.sys.country;
  
  forecast_temprature1 = json2.list[0].main.temp;
    forecast_temprature2 = json2.list[1].main.temp;
      forecast_temprature3 = json2.list[2].main.temp;

  forecast_weather1 = json2.list[0].weather[0].description;
    forecast_weather2 = json2.list[1].weather[0].description;
      forecast_weather3 = json2.list[2].weather[0].description;

  
  
  //movable bubbles 
  bubble1 = new Bubble(50, 80, 50); //weather
  bubble2 = new Bubble(50, 150, 50); //time date
  bubble3 = new Bubble(50, 220, 50); //news
  bubble4 = new Bubble(50, 290, 50); //nighinfo
  bubble5 = new Bubble(50, 360, 50); // todo list
  bubble6 = new Bubble(50, 430, 50); // color, light source
  
  edit_rect = new Rectangle(0, 0, 70, 25, 20);
}


function draw() {
  
  image(video, 0, 0);
  bubble1.over();
  bubble1.update();
  bubble1.show();
  bubble1.show_weather_icon();
  
  bubble2.over();
  bubble2.update();
  bubble2.show();
  bubble2.show_clock();
  
  bubble3.over();
  bubble3.update();
  bubble3.show();
  
  bubble4.over();
  bubble4.update();
  bubble4.show();
  bubble4.show_bed_room();
  
  bubble5.over();
  bubble5.update();
  bubble5.show();
  bubble5.show_to_do_list();
  
  bubble6.over();
  bubble6.update();
  bubble6.show();
  bubble6.show_color1();
  
  
  edit_rect.show_rect();
  
  push();
  stroke(0);
  strokeWeight(4);
  textSize(20);
  fill(255);
  text("EDIT", 10, 20);
  pop();
  
  if(weather1) {
    weather_details();
  }
  
  if(clock) {
    analog_clock();
    digital_clock();
    date();
  }
  
  if(to_do) {
  to_do_list();
  }
  
  if(sleep) {
  show_sleep_details();
  }
  
  if(light_source){
  show_light_source();
  }
  
  
}

function mousePressed() {
  bubble1.pressed();
  bubble2.pressed();
  bubble3.pressed();
  bubble4.pressed();
  bubble5.pressed();
  bubble6.pressed();
}

function mouseReleased() {
  bubble1.released();
  bubble2.released();
  bubble3.released();
  bubble4.released();
  bubble5.released();
  bubble6.released();
}

function mouseClicked() {
 bubble1.clicked_weather();
 bubble2.clicked_clock();
 edit_rect.clicked_edit();
 bubble5.clicked_to_do_list();
 bubble4.clicked_sleep();
 bubble6.clicked_light_source();
 
}

function show_light_source() {
  push();
 
  fill(colorPicker.color());
  rect(180, 0, 300, 30, 20);
  
  pop();

}

function show_sleep_details(){
  push();
  fill(78, 176, 242, 195);
  circle(580, 500, 400);
  pop();
  image(img_bed_room, 570, 300, 45, 55);
  push();
  fill(255);
  textSize(18);
  text("Sleep data", 470, 350);
  pop();
  push();
  textSize(12);
  fill(255);
  text("- This night: 7 hours total. 8% increase", 430, 380); 
  text("- Last night: 6.8 hours total. 7% decrease", 415, 410);
  text("- Wednesday: 7.2 hours total. 10% increase", 400, 440);
  text("- Overall sleep: about 6% less than last week", 387, 470);

  
  pop();
  
  

}
//fill(255, 100);
function weather_details() {
  push();
  tint(255, 200);
 image(img_cloud_small, -73, -25, 625, 175);
 image(img_cloud_large, 225, 315, 500, 230);
 push();
 fill(255, 255, 0, 50);
 circle(590, 0, 200);
 pop();
  pop();
  push();
  stroke(0);
  strokeWeight(3);
  fill(255);
  textSize(15);
  push();
  stroke(0);
  strokeWeight(6);
  textSize(15);
  text("Lubbock, " + country, 120, 20);
  image(img_usa, 210, 3, 35, 25);
  text("Weather for the next three days: ", 305, 410);
  pop();
  text("Current temprature:  " + temprature, 120, 37);
  text("But it feels more like:  " + feels_like, 120, 55);
  text("Right now it is: " + weather, 120, 73);
  
  
  text("Tomorrow:  " + forecast_temprature1 + " degrees with " + forecast_weather1, 305, 430);
    text("In two days:  " + forecast_temprature2 + " degrees with " + forecast_weather2, 305, 450);
      text("In three days:  " + forecast_temprature3 + " degrees with " + forecast_weather3, 305, 470);

  pop();
  
}

function date() {
  let currentYear = year();
  let currentMonth = month();
  let currentDay = day();
  
  let currentDate = nf(currentMonth, 2) + "-" + nf(currentDay,2) + "-" + currentYear
  push();
  fill(255);
  textSize(30);
  text(currentDate, 225, 60);
  pop();
}

function digital_clock() {
  push();
  fill(255);
  textAlign(CENTER, CENTER);
  textSize(60);
  
  
  let Hour = hour();
  let min = minute();
  let seconds = second();
  let noon = Hour >= 12 ? " PM" : " AM"; //Elvis operator
  if(min < 10) {
    min = "0"+min  
  }
  Hour%=12
  push();
  stroke(0);
  strokeWeight(4);
  text(Hour+":"+min+":"+seconds+noon, 300, 100);
  pop();
  pop();
  
}

function analog_clock() {
    push();
    noStroke();
    fill(255, 180);
    circle(300, 300, 325);
    pop();
    push();
    translate(300, 300);
    rotate(-90);
    let hr = hour();
    let mn = minute();
    let sc = second();
    
    strokeWeight(5);
    
    //second
    stroke('#964F4CFF');
    noFill();
    let secondAngle = map(sc, 0, 60, 0, 360);
    arc(0, 0, 300, 300, 0, secondAngle);
    //minute
    stroke('#567572FF');
    let minuteAngle = map(mn, 0, 60, 0, 360);
    arc(0, 0, 280, 280, 0, minuteAngle);
    //hour
    stroke('#696667FF');
    let hourAngle = map(hr % 12, 0, 12, 0, 360);
    arc(0, 0, 260, 260, 0, hourAngle);
    
    //second-line
    push();
    rotate(secondAngle);
    stroke('#964F4CFF');
    line(0, 0, 100, 0);
    pop();
    
    //minute-line
    push();
    rotate(minuteAngle);
    stroke('#567572FF');
    line(0, 0, 80, 0);
    pop();
    
    //hour-line
    push();
    rotate(hourAngle);
    stroke('#696667FF');
    line(0, 0, 60, 0);
    pop();
    
    //center
    push();
    stroke(300);
    point(0,0);
    pop();
    
    pop();
  
}

function to_do_list() {
  push();
  fill(125, 195);
  circle(600, 30, 320);
  pop();
  push();
  fill(255);
  textSize(14);
  push();
  stroke(0);
  strokeWeight(4);
  textSize(18);
  text("To do list:", 490, 35);
  pop();
  text("- Finish HCI project", 490, 60);
  text("- Grocery shopping", 490, 85);
  text("- Pay rent", 490, 110);
  text("- Call mom and dad", 490, 135);
  pop();
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
    strokeWeight(3);
    // Different fill based on state
    if (this.dragging) {
      fill(150);
    } else if (this.rollover) {
      fill(210);
    } else {
      fill(255);
    }
    circle(this.x, this.y, this.r);
   
    
  }
  
  show_clock() {
  push();
  tint(255, 168);
  image(img, this.x - 35, this.y - 35, 70, 70);
  pop();
  }
  
  show_weather_icon() {
  push();
  image(img_weather, this.x-30, this.y-23, 60, 40);
  pop();
  }
  
  show_to_do_list(){
  push();
  image(img_to_do, this.x-28, this.y-20, 60, 40);
  pop();
  }
  
  show_bed_room() {
  image(img_bed_room, this.x-19, this.y-24, 38, 38);
  }
  
   show_color1() {
     push();
     tint(255, 168);
  image(img_color1, this.x-25, this.y-25, 50, 50);
  pop();
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
      
    }
  }
  }
  
  clicked_clock() {
    if(!edit) {
    if (mouseX > this.x - this.r && mouseX < this.x + this.r && mouseY > this.y - this.r && mouseY < this.y + this.r) {
    clock = !clock;
    }
  }
  }
  
  clicked_to_do_list() {
  if (!edit) {
    if (mouseX > this.x - this.r && mouseX < this.x + this.r && mouseY > this.y - this.r && mouseY < this.y + this.r) {
      to_do = !to_do;
    }
  }
  }
  
  clicked_sleep() {
  if (!edit) {
    if (mouseX > this.x - this.r && mouseX < this.x + this.r && mouseY > this.y - this.r && mouseY < this.y + this.r) {
      sleep = !sleep;
    }
  }
  }
  
  clicked_light_source() {
  if (!edit) {
    if (mouseX > this.x - this.r && mouseX < this.x + this.r && mouseY > this.y - this.r && mouseY < this.y + this.r) {
      light_source = !light_source;
    }
  }
  }
  
  
}

// ------------------- BUBBLE CLASS END ------------------------ //

// ------------------- RECTANGLE CLASS ------------------------ //
class Rectangle {
  constructor(x, y, w, h, c) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.c = c;
  }
  
  show_rect() {
    stroke(0);
    if(edit) {
      fill(255, 255, 0);
    } else {
      fill(125);
    }
    rect(this.x, this.y, this.w, this.h, this.c);
  }
  
  clicked_edit() {
  if (mouseX > this.x && mouseX < this.x + this.w && mouseY > this.y && mouseY < this.y + this.h) {
    edit = !edit;
    
  }
  }
}

// ------------------- RECTANGLE CLASS END ------------------------ //
  
