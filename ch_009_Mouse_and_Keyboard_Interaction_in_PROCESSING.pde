//9부: Mouse and Keyboard Interaction in PROCESSING
      float gfCenterX;
      float gfCenterY;
      float gfRadius;
      boolean isMousePressedActive;
      void setup() {
        size(1200, 900);
        gfCenterX = width/2.0; gfCenterY = height/2.0; gfRadius = 50;
        isMousePressedActive = false;
      }
      void draw() {
        //doStuff0(); //mousePressed 예제
        //doStuff1(); //mouseButton 예제
        //doStuff2(); //key 예제
        //isMousePressedActive = true; //keyPressed 예제
      }
      
//  1. mouseX, mouseY
//    현 프레임에서 마우스 커서의 위치
//  2. mousePressed
//    현 프레임에서 마우스 버튼을 눌렀는지 여부를 담는 boolean 변수
//    마우스 버튼을 누르고 있으면 true, 누르지 않으면 false 값을 갖는다.
      void doStuff0() {
        background(191);
        if (mousePressed==true) { //이 조건은 if (mousePressed)라고 작성해도 동일한 결과가 나온다.
          background(0);
        }
      }
//  3. mouseButton
//    최근에 누른 마우스 버튼의 종류(LEFT=37, RIGHT=39). 초기값은 0이다.
//    Note. 마우스 커서가 이동하면 이 변수의 값은 초기값으로 되돌아간다.
      void doStuff1() {
        background(191);
        if (mousePressed) { //일단 마우스 버튼을 눌렀다면
          switch (mouseButton) { //누른 마우스 버튼의 종류를 추적하여 이에 따라 분기한다.
            case LEFT:
              background(191, 0, 0);
              break;
            case RIGHT:
              background(0, 191, 0);
              break;
          }
        }
      }
//  4. keyPressesd
//    현 프레임에서 키보드를 눌렀는지 여부를 담는 boolean 변수
//  5. key
//    최근에 누른 키의 값 (변수 자료형은 char)
//    e.g. if (keyPressed) {
//           if (key=='a') ...  
//         }
//    특수한 키보드 키의 사용
      void doStuff2() {
        if (keyPressed) {
          if (key==CODED) { //특수한 키는 코드화 되어있다...
            switch (keyCode) {
              case UP:
                gfCenterY-=10;
                if (gfCenterY<gfRadius) gfCenterY = gfRadius;
              break;
              case DOWN:
                gfCenterY+=10;
                if (gfCenterY>height-gfRadius) gfCenterY = height-gfRadius;
              break;
              case LEFT:
                gfCenterX-=10;
                if (gfCenterX<gfRadius) gfCenterX = gfRadius;
              break;
              case RIGHT:
                gfCenterX+=10;
                if (gfCenterX>width-gfRadius) gfCenterX = width-gfRadius;
              break;
            }
          }
        }
        background(191);
        noStroke();
        fill(63, 63, 255);
        ellipse(gfCenterX, gfCenterY, 2*gfRadius, 2*gfRadius);
      }
//  6. mousePressed 함수
//    if (mousePressed) {
//      background(random(255));
//    }
//    위 예시에서는 마우스 버튼을 약간만 길게 누르고 있어도 해당 if 문은 여러 번 작동하게 된다. (새 프레임으로 넘어오면
//    if 문을 적용할 것인지 판단하기 위해 조건 값을 다시 확인할 것이다.)
//    마우스 버튼을 한 번 누르고 다시 누르기 전 까지 단 한 번만 시행되는 코드는 특별한 함수를 사용하여 구현할 수 있다.
      void mousePressed() {
        if(!isMousePressedActive) return;
        background(random(255));
      }
//    mousePressed 함수는 마우스를 눌렀을 때 작동한다. 마우스를 길게 누르고 있다고 해도 다시 떼고 누르기 전 까지 단 한 번만 작동한다.
//    이 함수는 (마치 setup 및 draw 함수처럼) PROCESSING에서 제공해 주는 것으로 이 이름대로 사용하면 된다.
//    키보드 입력에도 비슷한 역할을 하는 void keyPressed()가 있다.
