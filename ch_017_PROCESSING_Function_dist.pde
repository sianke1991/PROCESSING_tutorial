//17부: PROCESSING Function: dist
//  1. dist(x1, y1, x2, y2)
//    점 (x1, y1)과 점 (x2, y2)의 거리를 반환한다.
      void setup() {
        size(1200, 900);
      }
      void draw() {
//      doStuff0(); //마우스 커서가 원 안에 있는지 여부 확인 예제
//      doStuff1(); //두 원 사이의 거리, 충돌 여부 확인 예제
      }
//  2. 마우스 커서가 원 안에 있는지 여부 확인
//    [마우스 커서와 원 중심 사이의 거리]가 [원의 반지름]보다 크면 마우스 커서는 원 밖에 있는 것이다.
//    [마우스 커서와 원 중심 사이의 거리]가 [원의 반지름]보다 작으면 마우스 커서는 원 안에 있는 것이다.
      void doStuff0() {
        background(191);
        float lfCenterX = width/2.0;
        float lfCenterY = height/4.0;
        float lfRadius  = 100.0;
        float lfDist    = dist(lfCenterX, lfCenterY, mouseX, mouseY);
        stroke(0);
        strokeWeight(1);
        if (lfDist<lfRadius) { //마우스 커서가 원 안에 있는 경우
          fill(191, 191, 0);
        } else {               //마우스 커서가 원 밖에 있는 경우
          fill(255);
        }
        ellipse(lfCenterX, lfCenterY, 2*lfRadius, 2*lfRadius);
      }
//  3. 두 원 사이의 거리 (충돌 여부 확인)
//    [두 원 중심 사이의 거리]가 [두 원의 반지름의 합]보다 크면 두 원은 만나지 않은 것이다.
//    [두 원 중심 사이의 거리]가 [두 원의 반지름의 합]보다 작으면 두 원은 겹쳐지는 부분이 있다.
      void doStuff1() {
        background(31, 31, 191);
        float lfCenterX1 = width/2.0;
        float lfCenterY1 = height/4.0 + height/2.0;
        float lfRadius1  = 100.0;
        color lc1        = color(31);
        
        float lfCenterX2 = mouseX;
        float lfCenterY2 = mouseY;
        float lfRadius2  = 150.0;
        color lc2        = color(191);
        
        float lfDist     = dist(lfCenterX1, lfCenterY1, lfCenterX2, lfCenterY2);
        if (lfRadius1+lfRadius2 >= lfDist) { //두 원이 겹쳐지는 부분이 있는 경우
          lc1 = lc2 = color(127);
        } else {                             //두 원이 만나지 않는 경우
          lc1 = color(31);
          lc2 = color(191);
        }
        noStroke();
        fill(lc1);
        ellipse(lfCenterX1, lfCenterY1, 2*lfRadius1, 2*lfRadius1);
        fill(lc2);
        ellipse(lfCenterX2, lfCenterY2, 2*lfRadius2, 2*lfRadius2);
      }
