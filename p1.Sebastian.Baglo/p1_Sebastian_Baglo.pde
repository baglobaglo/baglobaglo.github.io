import processing.sound.*;
SoundFile file;

//declaring some constant that i use alot for position and colors
String[] floors = {"R", "2", "3", "4", "5"};
int[] pos_y_floor_text = {508, 428, 348, 268, 188};
float circle_x_pos_left = 120;
float circle_x_button_left = 90;
float circle_x_pos_right = 150;
int floor_text_x_pos = 111; 
int outer_circle_color = color(0, 0, 0);
int inner_circle_color = color(255, 255, 255);

int open_door_color = 0;
int close_door_color = 0;

//Reseption
float R_y_high_top = 470;
float R_y_low_bottom = 535;
//Second floor
float Second_y_high_top = 390;
float Second_y_low_bottom = 455;
// Third floor
float Third_y_high_top = 310;
float Third_y_low_bottom = 375;
//Fourth floor
float Fourth_y_high_top = 230;
float Fourth_y_low_bottom = 295;
//Fifth floor
float Fifth_y_high_top = 150;
float Fifth_y_low_bottom = 215;

//Start position elevator
int yElevator = 470;

//boolearns for if buttons is pressed or not
boolean pressed_R = false;
boolean pressed_2 = false;
boolean pressed_3 = false;
boolean pressed_4 = false;
boolean pressed_5 = false;
boolean pressed_A = false;
boolean pressed_open = false;
boolean pressed_close = false;



//setup function. Starting the elevator music
void setup() {
  size(725, 750);  
  file = new SoundFile(this, "Elevator-music.mp3");
  file.amp(0.1);
  file.play();
}

void draw() {
  
  
  background(50);
  

   PImage glass_background;
    glass_background = loadImage("glass_background.jpeg");
    tint(250, 250, 250);
    image(glass_background, 35 , 0, 655, 750);
  
  //making the different buttons in the different for loops
  for (int i = 420; i > 100; i = i-80) {
    fill(outer_circle_color);
    circle(circle_x_pos_left, i, 62);
  }
  
  fill(0, 255, 0);
  circle(circle_x_pos_left, 500, 63);
  
  for (int i = 500; i > 100; i = i-80) {
    fill(inner_circle_color);
    circle(circle_x_pos_left, i , 55);
  }
  
  
  for (int i = 0, j = 0; i < 5 && j < 5; i = i+1, j = j+1) {
    textSize(30);
    fill(0);
    text(floors[i], floor_text_x_pos, pos_y_floor_text[j]);
  }
   
   //buttons for open and close elevator door
   pushStyle();
   fill(open_door_color);
   circle(circle_x_pos_left-40, 580, 62);
   fill(inner_circle_color);
   circle(circle_x_pos_left-40, 580, 55);
   
   fill(close_door_color);
   circle(circle_x_pos_left + 40, 580, 62);
   fill(inner_circle_color);
   circle(circle_x_pos_left + 40, 580, 55);
   
   fill(0);
   circle(circle_x_pos_left, 675, 62);
   fill(255, 153, 51);
   circle(circle_x_pos_left, 675, 55);
   popStyle();
   
   //icons/images for det different buttons / visuals. The name will describe the rest
    PImage open_elevator;
    open_elevator = loadImage("left.png");
    image(open_elevator, circle_x_pos_left-72, 552, 60, 55);
    image(open_elevator, circle_x_pos_left+35, 552, 60, 55);
    
    PImage close_elevator;
    close_elevator = loadImage("right.png");
    image(close_elevator, circle_x_pos_left-66, 552, 60, 55);
    image(close_elevator, circle_x_pos_left-14, 552, 60, 55);

    pushStyle();
    strokeWeight(3);
    line(circle_x_pos_left - 40, 560, circle_x_pos_left - 40, 600);
    line(circle_x_pos_left + 40, 560, circle_x_pos_left + 40, 600);
    popStyle();
    
    PImage alarm;
    alarm = loadImage("alarm.png");
    image(alarm, circle_x_pos_left - 29, 647, 60, 55);
    
    
  
  
  
  //  General icons and smaller things -------------------------------//
  
  PImage exit_stairs;
    exit_stairs = loadImage("exit_stairs.png");
    image(exit_stairs, 590, 130, 60, 55);
    image(exit_stairs, 590, 210, 60, 55);
    image(exit_stairs, 590, 290, 60, 55);
    image(exit_stairs, 590, 370, 60, 55);
  
  PImage img_bed_room;
      img_bed_room = loadImage("bed_room_x.png");
      tint(163, 154, 116, 255);
      image(img_bed_room, 310, 408, 60, 48);
      image(img_bed_room, 310, 328, 60, 48);
      image(img_bed_room, 310, 248, 60, 48);
      image(img_bed_room, 310, 168, 60, 48);
   
 //Room numbers and different information for different floors
   pushStyle();
   fill(0);
   textSize(20);
   
   text("Rooms", 393, 428);
   text("200 - 224", 385, 445);
   text("Rooms", 393, 348);
   text("300 - 310", 385, 365);
   text("Rooms", 393, 268);
   text("400 - 424", 385, 285);
   text("Rooms", 393, 188);
   text("500 - 510", 385, 205);
   
   text("Fitness", 545, 268);
   text("center", 548, 285);
   
   text("Pool area", 547, 433);
   
   
   text("Entrance", 547, 505);
   
   
   text("Activate alarm", 173, 660);
   text("by clicking once", 165, 680);
   text("then wait", 193, 702);
   text("--", 280, 702);
   text("--", 175, 702);
   popStyle();
   
   
 //Alarm ---------------------- //
 
   if(pressed_A) {
  pressed_R = false;
  pressed_2 = false;
  pressed_3 = false;
  pressed_4 = false;
  pressed_5 = false;
     pushStyle();
     fill(255, 255, 0);
     circle(circle_x_pos_left, 675, 65);
     fill(255, 0, 0);
     circle(circle_x_pos_left, 675, 55);  
     image(alarm, circle_x_pos_left - 29, 647, 60, 55);
     popStyle();
   }
   
 
      
  
  // RESEPTION and entrance ----------------------------- //
    
    PImage img_R;
    img_R = loadImage("reception_icon.png");
    tint(163, 154, 116, 255);
    image(img_R, 296, 457, 83, 88);
    
    PImage img_entrance;
    img_entrance = loadImage("entrance_x.png");
    tint(163, 154, 116, 255);
    image(img_entrance, 463, 455, 100, 100);
    
    pushStyle();
    textSize(20);
    text("Reception", 380, 508);
    popStyle();
    
    
    //Different if statements to decide if the elvator is going up or down
    //and to give visual feedback to the user
    if (pressed_R) {
      if( yElevator > 470) {
        fill(255, 255, 0);
        circle(circle_x_pos_left, 500, 65);
        fill(inner_circle_color);
        circle(circle_x_pos_left, 500 , 55);
        textSize(30);
        fill(0);
        text("R", floor_text_x_pos, 508);
        
        yElevator --;
        delay(5);
        if ( yElevator == 470) {
          exec("say", "Reception");
          pressed_R = !pressed_R;
          
        } 
      } else {
        fill(255, 255, 0);
        circle(circle_x_pos_left, 500, 65);
        fill(inner_circle_color);
        circle(circle_x_pos_left, 500 , 55);
        textSize(30);
        fill(0);
        text("R", floor_text_x_pos, 508);
        
        yElevator ++;
        delay(5);
        if ( yElevator == 470) {
          exec("say", "Reception");
          pressed_R = !pressed_R;
          
        }
      }
    }
    
    //SECOND FLOOR ----------------------------- //
      
     PImage img_sp;
    img_sp = loadImage("swimming-pool.png");
    tint(163, 154, 116, 255);
    image(img_sp, 480, 400, 62, 62);
      
      if (pressed_2) {
        if ( yElevator > 390) {
          fill(255, 255, 0);
          circle(circle_x_pos_left, 420, 65);
          fill(inner_circle_color);
          circle(circle_x_pos_left, 420 , 55);
          textSize(30);
          fill(0);
          text("2", floor_text_x_pos, 428);
          
          yElevator --;
          delay(10);
          if ( yElevator == 390) {
            exec("say", "Second floor");
            pressed_2 = !pressed_2;
          }
        } else {
          fill(255, 255, 0);
          circle(circle_x_pos_left, 420, 65);
          fill(inner_circle_color);
          circle(circle_x_pos_left, 420 , 55);
          textSize(30);
          fill(5);
          text("2", floor_text_x_pos, 428);
          
          yElevator ++;
          delay(10);
          if ( yElevator == 390) {
            exec("say", "Second floor");
            pressed_2 = !pressed_2;
            
          }
        }
      }
      // THIRD FLOOR ----------------------------- //
    
      if (pressed_3) {        
        if ( yElevator > 310) {
          fill(255, 255, 0);
          circle(circle_x_pos_left, 340, 65);
          fill(inner_circle_color);
          circle(circle_x_pos_left, 340 , 55);
          textSize(30);
          fill(0);
          text("3", floor_text_x_pos, 348);
          
          yElevator --;
          delay(5);
          if ( yElevator == 310) {
            exec("say", "Third floor");
            pressed_3 = !pressed_3;
            
          }
          
        } else {
          fill(255, 255, 0);
          circle(circle_x_pos_left, 340, 65);
          fill(inner_circle_color);
          circle(circle_x_pos_left, 340 , 55);
          textSize(30);
          fill(0);
          text("3", floor_text_x_pos, 348);
          
          yElevator ++;
          delay(5);
          if ( yElevator == 310) {
            exec("say", "Third floor");
            pressed_3 = !pressed_3;
            
          }
        }
      }
      
      //FOURTH FLOOR ----------------------------- //
      
      PImage img_fitness;
    img_fitness = loadImage("fitness_room.png");
    tint(163, 154, 116, 255);
    image(img_fitness, 474, 251, 80, 50);
    
      if (pressed_4) {
        if ( yElevator > 230) {
          fill(255, 255, 0);
          circle(circle_x_pos_left, 260, 65);
          fill(inner_circle_color);
          circle(circle_x_pos_left, 260 , 55);
          textSize(30);
          fill(0);
          text("4", floor_text_x_pos, 268);
          
          yElevator --;
          delay(5);
          if ( yElevator == 230) {
            exec("say", "Fourth floor");
            pressed_4 = !pressed_4;
            
          }
          
        } else {
          fill(255, 255, 0);
          circle(circle_x_pos_left, 260, 65);
          fill(inner_circle_color);
          circle(circle_x_pos_left, 260 , 55);
          textSize(30);
          fill(0);
          text("4", floor_text_x_pos, 268);
          
          yElevator ++;
          delay(5);
          if ( yElevator == 230) {
            exec("say", "Fourth floor");
            pressed_4 = !pressed_4;
            
          }
        }
      }
      
      //FIFTH FLOOR ----------------------------- //
      if (pressed_5) {
        if ( yElevator > 150) {
          fill(255, 255, 0);
          circle(circle_x_pos_left, 180, 65);
          fill(inner_circle_color);
          circle(circle_x_pos_left, 180 , 55);
          textSize(30);
          fill(0);
          text("5", floor_text_x_pos, 188);
          
          yElevator --;
          delay(5);
          if ( yElevator == 150) {
            exec("say", "Fifth floor");
            pressed_5 = false;
            
          }
          
        } else {
          fill(255, 255, 0);
          circle(circle_x_pos_left, 180, 65);
          fill(inner_circle_color);
          circle(circle_x_pos_left, 180 , 55);
          textSize(30);
          fill(0);
          text("5", floor_text_x_pos, 188);
          
          yElevator ++;
          delay(5);
          if ( yElevator == 150) {
            exec("say", "Fifth floor");
            pressed_5 = false;
            
          }
        }
      }
  
 
    //floor lines
 
 line(185, 215, 640, 215);
 line(185, 295, 640, 295);
 line(185, 375, 640, 375);
 line(185, 455, 640, 455);
 pushStyle();
 strokeWeight(2);
 line(280, 215, 640, 215);
 line(280, 295, 640, 295);
 line(280, 375, 640, 375);
 line(280, 455, 640, 455);
 popStyle();
 
 
 //walls and groundfloor/roof
 pushStyle();
 strokeWeight(5);
 line(185, 135, 185, 535);
 line(185, 535, 640, 535);
 line(640, 135, 640, 535);
 line(185, 135, 640, 135);
 line(280, 135, 280, 535);
 popStyle();
 
 //elevator icon and elevator movement
 
 pushStyle();
 strokeWeight(2);
 line(235, 135, 235, yElevator);
 popStyle();
 PImage img_elevator;
    img_elevator = loadImage("elevator_hotel.png");
    tint(163, 154, 116, 255);
    image(img_elevator, 194, yElevator-18, 83, 88);
 
 pushStyle();
  stroke(153);
  strokeWeight(5);
  line(483, 535, 542, 535);
  popStyle();
  
  
  //numbers for blind people
    pushStyle();
    stroke(125);
    
    circle(133, 491, 5);
    circle(133, 498, 5);
    circle(133, 505, 5);
    circle(140, 498, 5);
    
    circle(133, 411, 5);
    circle(133, 418, 5);
    
    circle(137, 331, 5);
    circle(130, 331, 5);
    
    circle(130, 251, 5);
    circle(137, 251, 5);
    circle(137, 258, 5);
    
    circle(130, 171, 5);
    circle(137, 178, 5);
    popStyle();
}
  




//logic for when you press the different buttons
void mouseClicked() {
  
   PImage open_elevator;
    open_elevator = loadImage("left.png");
   PImage close_elevator;
    close_elevator = loadImage("right.png");
    
 
    // Reseption floor button
    if (mouseX>circle_x_button_left && mouseX<circle_x_pos_right 
    && mouseY>R_y_high_top && mouseY<R_y_low_bottom) {
        pressed_R = true;
        
         if (yElevator > 470){
          exec("say", "Going up");
        } else if (yElevator < 470){
          exec("say", "Going down");

        }         
  }
    // Second floor button
    if (mouseX>circle_x_button_left && mouseX<circle_x_pos_right
    && mouseY>Second_y_high_top && mouseY<Second_y_low_bottom) {
        pressed_2 = true;
        
        if (yElevator > 390){
          exec("say", "Going up");
        } else if (yElevator < 390) {
          exec("say", "Going down");

        }
        
  }
     
    // Third floor
    if (mouseX>circle_x_button_left && mouseX<circle_x_pos_right
    && mouseY>Third_y_high_top && mouseY<Third_y_low_bottom) {
        pressed_3 = true;
        
         if (yElevator > 310){
          exec("say", "Going up");
        } else if (yElevator < 310) {
          exec("say", "Going down");

        }
  } 
  // Fourth floor
    if (mouseX>circle_x_button_left && mouseX<circle_x_pos_right
    && mouseY>Fourth_y_high_top && mouseY<Fourth_y_low_bottom) {
        pressed_4 = true;
        
         if (yElevator > 230){
          exec("say", "Going up");
        } else if (yElevator < 230) {
          exec("say", "Going down");

        }
        
  } 
  // Fifth floor
    if (mouseX>circle_x_button_left && mouseX<circle_x_pos_right
    && mouseY>Fifth_y_high_top && mouseY<Fifth_y_low_bottom) {
        pressed_5 = true;
        
         if (yElevator > 150){
          exec("say", "Going up");
        } else if (yElevator < 150) {
          exec("say", "Going down");

        }
        
        
  }
  
   
   
   // Alarm
    if (mouseX>circle_x_button_left && mouseX<circle_x_pos_right
    && mouseY>640 && mouseY<710) {
        pressed_A = !pressed_A;
        if(pressed_A) {
        exec("say", "Alarm activated");
        } else {
          exec("say", "Alarm deactivated");
        }
        
  }
  
  if (mouseX>circle_x_button_left-40 && mouseX<circle_x_pos_right-40
  && mouseY>545 && mouseY<615) {
    exec("say", "Opening doors");
    
     fill(255, 255, 0);
     circle(circle_x_pos_left-40, 580, 62);
     fill(inner_circle_color);
     circle(circle_x_pos_left-40, 580, 55);
     
      image(open_elevator, circle_x_pos_left-72, 552, 60, 55);
      image(close_elevator, circle_x_pos_left-66, 552, 60, 55);
     
     
   
  }
  
  if (mouseX>circle_x_button_left+40 && mouseX<circle_x_pos_right+40
  && mouseY>545 && mouseY<615) {
    exec("say", "Closing doors");
    
    fill(255, 255, 0);
   circle(circle_x_pos_left + 40, 580, 62);
   fill(inner_circle_color);
   circle(circle_x_pos_left + 40, 580, 55);
   
   image(open_elevator, circle_x_pos_left+35, 552, 60, 55);
   image(close_elevator, circle_x_pos_left-14, 552, 60, 55);
  }
}



   
