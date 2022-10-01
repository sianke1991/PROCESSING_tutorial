//3부 setup and draw
//  1. 동적 모드(active mode)의 기본 구조
      void setup() {
        size(500, 500);
        //각 변수의 초기화
      }
      
      void draw() {
        drawCircle();
        //매 프레임마다 수행하는 동작
      }
      
/*
      setup, draw 함수는 PROCESSING에서 제공해 주는 것으로, 반드시 이 이름대로 사용해야 한다.
      (함수의 내용을 정의할 수 있다.)
*/

//  2. setup and draw
//    setup 함수: 스케치를 실행했을 때 최초 한 번만 실행된다.
//    draw 함수: 매 프레임마다 함수 내의 내용이 계속해서 실행된다.
//    Note. size 함수를 draw 함수 내부에 넣으면 오류가 발생한다.
//    Note. setup 함수는 (draw 함수 적용 전) 단 한 번만 적용된다. 따라서 draw 함수 내용이 setup 함수 내용을 '덮어버리는' 일도 발생할 수 있다.
//    Note. setup 함수에서 mouseX, mouseY (=> 시스템 변수, 7부 참조)를 사용하는 경우 이 두 변수는 초기값 0에서 변하지 않는다.
//    (이 변수는 매 프레임마다 마우스 커서의 위치를 추적하여 값을 업데이트한다.)
//    Note. 마우스 커서를 따라서 움직이는 원
      void drawCircle() {
        background(191); //매 프레임마다 배경을 계속해서 그려줌으로써, 이전 프레임에서 그려진 원을 지울 수 있다.
        noStroke();
        fill(0, 0, 191);
        ellipse(mouseX, mouseY, 50, 50);
      }
