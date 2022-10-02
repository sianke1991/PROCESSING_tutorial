//4.2부 Drawing arc in PROCESSING(2)
//    Note. frameCount: PROCESSING에서 제공해 주는 변수로 0에서 시작하여 프레임마다 1 씩 증가한다.
//  8. 회전하는 원호
      void setup() {
        size(1200, 900);
      }
      
      void draw() {
        background(191);
        noFill();
        stroke(0);
        strokeWeight(20);
        strokeCap(ROUND);
        arc(600, 200, 200, 200, 0+frameCount/100.0, PI/2+frameCount/100.0);
        //원호의 회전하는 속도를 조절할 수 있다.
        //위 예시의 경우 원호는 0.01 rad/frame의 속도로 회전한다.
        //100 대신에 100.0을 사용해야 정수간의 나눗셈(소수점 이하의 값을 버림)이 아닌 실수간의 나눗셈을 수행한다.
        
        drawYinyang();
      }

      
//  9. 회전하는 음양 심볼
      void drawYinyang() {
        noStroke();
        fill(255, 0, 0);
        arc(600, 500, 200, 200, HALF_PI-frameCount/50.0, 3*HALF_PI-frameCount/50.0);
        fill(0, 0, 255);
        arc(600, 500, 200, 200, 3*HALF_PI-frameCount/50.0, 5*HALF_PI-frameCount/50.0);
        fill (255, 0, 0);
        arc(600+50*sin(frameCount/50.0), 500+50*cos(frameCount/50.0), 100, 100, 3*HALF_PI-frameCount/50.0, 5*HALF_PI-frameCount/50.0);
        fill(0, 0, 255);
        arc(600-50*sin(frameCount/50.0), 500-50*cos(frameCount/50.0), 100, 100, HALF_PI-frameCount/50.0, 3*HALF_PI-frameCount/50.0);
        fill(255, 0, 0);
        ellipse(600-50*sin(frameCount/50.0), 500-50*cos(frameCount/50.0), 33, 33);
        fill(0, 0, 255);
        ellipse(600+50*sin(frameCount/50.0), 500+50*cos(frameCount/50.0), 33, 33);
        
      }
