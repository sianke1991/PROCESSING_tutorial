//16부: PROCESSING Function: map
//  1. map(value, start1, stop1, start2, stop2)
//    어떤 값을 한 범위에서 다른 범위로 바꾸어준다.
//    value가 start1과 같으면 start2를 반환한다.
//    value가 stop1과 같으면 stop2를 반환한다.
//    value가 그 외의 값이라면 [반환값이 value에 대한 일차함수가 되도록 하는 값]을 반환한다.
//    f(value) = map(value, start1, stop1, start2, stop2) s.t.
//    f(x)는 x에 대한 일차함수
//  , f(start1) = start2
//  , f(stop1)  = stop2
      void setup() {
        size(1200, 900);
      }
      void draw() {
//      doStuff0(); //map 함수의 효과 예제
//      doStuff1(); //map으로 색상 설정
      }
//  2. map 함수의 효과
      void doStuff0() {
        background(63, 63, 127);
        fill(91);
        ellipse(width/2.0, height/2.0-height/4.0, mouseX, mouseX); //mouseX 값을 그대로 원의 지름으로 사용한 경우
        
        float lfDiam = map(mouseX, 0, width, 50, 250); //mouseX에 대한 원의 지름을 정의
        //0부터 width까지의 값을 가질 수 있는 mouseX의 값을 50 부터 250 까지의 범위로 변형한 값을 lfDiam이라는 변수에 담는다.
        fill(191, 191, 0);
        ellipse(width/2.0, height/2.0+height/4.0, lfDiam, lfDiam); //mouseX의 값을 다른 범위로 변형한 값을 원의 지름으로 사용한 경우
//      Note. 이 예시에서 map 함수에 인자를 넣는 순서를 바꾸면 변수 lfDiam의 값이 증가하는 방법이 달라진다.
        lfDiam = map(mouseX, 0, width, 250, 50); //이 경우 마우스 커서가 왼쪽으로 갈 수록 lfDiam의 값이 커진다.
        fill(0, 191, 191);
        ellipse(width/2.0, height/2.0, lfDiam, lfDiam);
      }
// 3. map으로 색상 설정
//    색상은 0-255 사이의 값을 사용하기 대문에 다른 변수의 값을 0-255 사이로 제한하는데 map 함수가 유용하게 사용된다.
      void doStuff1() {
        background(63, 63, 127);
        for (int i=0; i<width; i++) {
          stroke(i);                    //이 경우 i가 255 보다 커지는 경우 선이 그려지지 않는다.
          line(i, 0, i, height/2.0); 
        } //i loop
        for (int i=0; i<width; i++) {
          float lfColor = map(i, 0, width, 0, 255); //이 경우 i가 255보다 커지더라도 lfColor가 적절한 값을 가져서 선을 그릴 수 있게 된다.
          stroke(lfColor);
          line(i, height/2.0, i, height);
        } //i loop
      }
