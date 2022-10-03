//7부: System Variables in PROCESSING
//  PROCESSING에서 자체적으로 제공하여 [코드를 작성하는 사람이 별도로 선언하지 않더라도]
//  사용 가능한 변수들이 있다.
      void draw() {
        //doStuff0(); //width, height 예제
        //doStuff1(); //mouseX, mouseY 예제
        //doStuff2(); //pmouseX, pmouseY 예제
        //doStuff3(); //key 예제
        //doStuff4(); //frameRate 예제
        //doStuff5(); //frameCount 예제
      }
//  1. width, height
//    기본적으로 size 함수는 리터럴 정수 인자를 사용해야 하며, 변수 인자를 사용할 수 없다.
//    대신 일단 size 함수를 사용했다면 해당 인자 값을 width와 height라는 변수가 담게 된다.
      void setup() {
        size(500, 500); //size 함수의 인자는 리터럴 정수이어야 한다. (변수가 들어갈 수 없다.)
      }
      void doStuff0() {
        background(191);
        stroke(0);
        strokeWeight(1);
        noFill();
        ellipse(width/2.0, height/2.0, 20, 20); //width, height 라는 시스템 변수를 사용함으로써,
                                                //size 함수의 인자를 변경해도 화면 정 중앙에 원을 그리게 만들 수 있다.
      }
//  2. mouseX, mouseY
//    화면 안 마우스 커서의 위치를 추적한다.
      void doStuff1() {
        background(191);
        stroke(0);
        strokeWeight(1);
        fill((float)mouseX/width*255); //마우스 커서 위치에 따라 원의 색이 변한다.
                                       //나눗셈을 할 때 실수의 나눗셈을 수행하기 위해 mouseX의 값을 float로 형 변환 한다.
        ellipse(width/2.0, height/2.0, 20, 20);
      }
//  3. pmouseX, pmouseY
//    바로 전 프레임에서의 마우스 커서의 위치
      void doStuff2() {
        stroke(0);
        strokeWeight(1);
        line(pmouseX, pmouseY, mouseX, mouseY);
      }
//    바로 전 프레임에서 마우스 커서 위치와 현 프레임에서 마우스 커서 위치를 연결하는 직선을 그린다.
//    draw 함수에 배경을 새로 그리는 background 함수가 사용되지 않았으므로 line 함수에 의해 그려지는 직선들은 지워지지 않고 계속 누적된다.
//    Note. mouseX, mouseY, pmouseX, pmouseY의 초기값은 0이다.
//    Note. 마우스를 클릭하고 있을 때만 직선을 그리게 만드려면 다음과 같이 조건문을 사용할 수 있다.
//    if (mousePressed) {
//      line(pmouseX, pmouseY, mouseX, mouseY);
//    }
//  4. mousePressed
//    마우스 버튼을 누르면 true, 누르지 않으면 false 값을 갖는 boolean 변수
//  5. key
//    최근에 누른 키보드의 키
      void doStuff3() {
        background(127);
        textSize(72);
        fill(0); //화면에 출력할 문자의 색은 fill 함수로 지정한다.
        if (key!=0)
          text(key, width/2, height/2); //text: 문자, 문자열을 화면에 출력하는 함수        
      }
//  6. frameRate
//    현재 초 당 프레임 수를 나타내는 변수
      void doStuff4() {
        background(191);
        textSize(72);
        fill(0);
        textAlign(CENTER); //textAlign: 텍스트 정렬을 지정하는 함수. textAlign(CENTER)로 지정하면 문자열은 주어진 위치가 중심이 되도록 출력된다.
        text(frameRate, width/2, height/2);
//      Note. 동명의 함수가 있어서 현재 초 당 프레임 수를 설정할 수 있다.
        frameRate(30); //초 당 30 프레임으로 재생되게 만든다.
      }
//  7. frameCount
//    프로그램이 시작할 때 부터 몇 프레임이 지나갔는지 그 수를 카운트 하는 변수
      void doStuff5() {
        noStroke();
        fill(0);
        ellipse(mouseX, mouseY, 100, 100);
        if (frameCount<60) { //0-59 번째 프레임의 이미지를 저장한다.
          saveFrame();       //Sketch 메뉴 -> ShowSketchFolder 에서 저장된 파일을 볼 수 있다.
        }
      }
