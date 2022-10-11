//15부: PROCESSING Function: constrain
//  1. constrain(amt, low, high)
//    어떤 값이 지정한 범위를 벗어나지 않도록 해 준다.
//    amt가 low보다 낮으면 low 값을 반환한다.
//    amt가 high보다 높으면 high 값을 반환한다.
//    amt가 low와 high 사이에 있으면 amt 값을 반환한다.
      void setup() {
        size(500, 500);
        println(constrain(70, 50, 100)); //70
        println(constrain(120, 50, 100)); //100
        println(constrain(2000, 50, 100)); //100
        println(constrain(-100, 50, 100)); //50
      }
//  2. 마우스 커서를 따라 움직이는 원이 제한된 사각형 외부로 벗어나지 않게 만들기
      void draw() {
        background(191);
        rect(150, 150, 200, 200);
        float lfCenterX = constrain(mouseX, 200, 300); //mouseX에 제한을 둔 값
        float lfCenterY = constrain(mouseY, 200, 300); //mouseY에 제한을 둔 값
        ellipse(lfCenterX, lfCenterY, 100, 100);
      }
