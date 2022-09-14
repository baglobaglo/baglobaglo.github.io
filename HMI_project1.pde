String[] floors = {"R", "2", "3", "4", "5"};
int[] pos_y_floor_text = {508, 428, 348, 268, 188};
float circle_x_pos_left = 200;
float circle_x_button_left = 175;
float circle_x_pos_right = 225;
int floor_text_x_pos = 193;
int outer_circle_color = color(0, 0, 0);
int inner_circle_color = color(255, 255, 255);


//Reseption
float R_y_high_top = 475;
float R_y_low_bottom = 530;
//Second floor
float Second_y_high_top = 395;
float Second_y_low_bottom = 450;
// Third floor
float Third_y_high_top = 315;
float Third_y_low_bottom = 370;
//Fourth floor
float Fourth_y_high_top = 235;
float Fourth_y_low_bottom = 310;
//Fifth floor
float Fifth_y_high_top = 155;
float Fifth_y_low_bottom = 230;

//470
int yElevator = 470;

boolean pressed_R = false;
boolean pressed_2 = false;
boolean pressed_3 = false;
boolean pressed_4 = false;
boolean pressed_5 = false;




void setup() {
  size(750, 750);  
}

void draw() {
  background(163, 154, 116);
  
  
  for (int i = 500; i > 100; i = i-80) {
    fill(outer_circle_color);
    circle(circle_x_pos_left, i, 57);
  }
  
  for (int i = 500; i > 100; i = i-80) {
    fill(inner_circle_color);
    circle(circle_x_pos_left, i , 50);
  }
  
  
  for (int i = 0, j = 0; i < 5 && j < 5; i = i+1, j = j+1) {
    textSize(30);
    fill(0);
    text(floors[i], floor_text_x_pos, pos_y_floor_text[j]);
    
  }
  
  // ---------------------------------------------------//
  
  // RESEPTION ----------------------------- //
  
    if (pressed_R) {
      if( yElevator > 470) {
        fill(255, 255, 0);
        ellipse(circle_x_pos_left, 500, 60, 60);
        fill(inner_circle_color);
        circle(circle_x_pos_left, 500 , 50);
        textSize(30);
        fill(0);
        text("R", floor_text_x_pos, 508);
        
        yElevator --;
        delay(25);
        if ( yElevator == 470) {
          pressed_R = !pressed_R;
          
        } 
      } else {
        fill(255, 255, 0);
        ellipse(circle_x_pos_left, 500, 60, 60);
        fill(inner_circle_color);
        circle(circle_x_pos_left, 500 , 50);
        textSize(30);
        fill(0);
        text("R", floor_text_x_pos, 508);
        
        yElevator ++;
        delay(25);
        if ( yElevator == 470) {
          pressed_R = !pressed_R;
          
        }
      }
    }
    
    //SECOND FLOOR ----------------------------- //
      
      if (pressed_2) {
        if ( yElevator > 390) {
          fill(255, 255, 0);
          ellipse(circle_x_pos_left, 420, 60, 60);
          fill(inner_circle_color);
          circle(circle_x_pos_left, 420 , 50);
          textSize(30);
          fill(0);
          text("2", floor_text_x_pos, 428);
          
          yElevator --;
          delay(25);
          if ( yElevator == 390) {
            pressed_2 = !pressed_2;
          }
        } else {
          fill(255, 255, 0);
          ellipse(circle_x_pos_left, 420, 60, 60);
          fill(inner_circle_color);
          circle(circle_x_pos_left, 420 , 50);
          textSize(30);
          fill(0);
          text("2", floor_text_x_pos, 428);
          
          yElevator ++;
          delay(25);
          if ( yElevator == 390) {
            pressed_2 = !pressed_2;           
          }
        }
      }
      // THIRD FLOOR ----------------------------- //
      
      if (pressed_3) {        
        if ( yElevator > 310) {
          fill(255, 255, 0);
          ellipse(circle_x_pos_left, 340, 60, 60);
          fill(inner_circle_color);
          circle(circle_x_pos_left, 340 , 50);
          textSize(30);
          fill(0);
          text("3", floor_text_x_pos, 348);
          
          yElevator --;
          delay(25);
          if ( yElevator == 310) {
            pressed_3 = !pressed_3;
            
          }
          
        } else {
          fill(255, 255, 0);
          ellipse(circle_x_pos_left, 340, 60, 60);
          fill(inner_circle_color);
          circle(circle_x_pos_left, 340 , 50);
          textSize(30);
          fill(0);
          text("3", floor_text_x_pos, 348);
          
          yElevator ++;
          delay(25);
          if ( yElevator == 310) {
            pressed_3 = !pressed_3;
            
          }
        }
      }
      
      //FOURT FLOOR ----------------------------- //
      if (pressed_4) {
        if ( yElevator > 230) {
          fill(255, 255, 0);
          ellipse(circle_x_pos_left, 260, 60, 60);
          fill(inner_circle_color);
          circle(circle_x_pos_left, 260 , 50);
          textSize(30);
          fill(0);
          text("4", floor_text_x_pos, 268);
          
          yElevator --;
          delay(25);
          if ( yElevator == 230) {
            pressed_4 = !pressed_4;
            
          }
          
        } else {
          fill(255, 255, 0);
          ellipse(circle_x_pos_left, 260, 60, 60);
          fill(inner_circle_color);
          circle(circle_x_pos_left, 260 , 50);
          textSize(30);
          fill(0);
          text("4", floor_text_x_pos, 268);
          
          yElevator ++;
          delay(25);
          if ( yElevator == 230) {
            pressed_4 = !pressed_4;
            
          }
        }
      }
      
      //FOURT FLOOR ----------------------------- //
      if (pressed_5) {
        if ( yElevator > 150) {
          fill(255, 255, 0);
          ellipse(circle_x_pos_left, 180, 60, 60);
          fill(inner_circle_color);
          circle(circle_x_pos_left, 180 , 50);
          textSize(30);
          fill(0);
          text("5", floor_text_x_pos, 188);
          
          yElevator --;
          delay(25);
          if ( yElevator == 150) {
            pressed_5 = false;
            
          }
          
        } else {
          fill(255, 255, 0);
          ellipse(circle_x_pos_left, 180, 60, 60);
          fill(inner_circle_color);
          circle(circle_x_pos_left, 180 , 50);
          textSize(30);
          fill(0);
          text("5", floor_text_x_pos, 188);
          
          yElevator ++;
          delay(25);
          if ( yElevator == 150) {
            pressed_5 = false;
            
          }
        }
      }
      
  
  
 fill(0, 0, 0);
 rect(300, yElevator, 45, 55, 15);
 fill(255);
 rect(310, yElevator+15, 25, 10, 20);
 
 line(100, 150, 400, 150);
 line(100, 230, 400, 230);
 line(100, 310, 400, 310);
 line(100, 390, 400, 390);
 line(100, 470, 400, 470);
 
 
}


void mouseClicked() {
 
    // Reseption floor button
    if (mouseX>circle_x_button_left && mouseX<circle_x_pos_right 
    && mouseY>R_y_high_top && mouseY<R_y_low_bottom) {
        pressed_R = !pressed_R;
        
             
  }
    // Second floor button
    if (mouseX>circle_x_button_left && mouseX<circle_x_pos_right
    && mouseY>Second_y_high_top && mouseY<Second_y_low_bottom) {
        pressed_2 = !pressed_2;
        
  }
     
    // Third floor
    if (mouseX>circle_x_button_left && mouseX<circle_x_pos_right
    && mouseY>Third_y_high_top && mouseY<Third_y_low_bottom) {
        pressed_3 = !pressed_3;
  } 
  // Fourth floor
    if (mouseX>circle_x_button_left && mouseX<circle_x_pos_right
    && mouseY>Fourth_y_high_top && mouseY<Fourth_y_low_bottom) {
        pressed_4 = !pressed_4;
        
  } 
  // Fifth floor
    if (mouseX>circle_x_button_left && mouseX<circle_x_pos_right
    && mouseY>Fifth_y_high_top && mouseY<Fifth_y_low_bottom) {
        pressed_5 = !pressed_5;
        
        
  }
}



   
