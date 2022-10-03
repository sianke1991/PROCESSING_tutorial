//8부: if Conditional in PROCESSING
//    if (boolean) { //boolean은 true 또는 false 둘 중에 하나의 값을 갖는다.
//      statement0;  //if 괄호 안의 boolean이 false일 때는 statement0, statement1은 수행하지 않고 건너뛰게 된다.
//      statement1;
//    }
//  1. 비교 연산자 (두 수치의 대소를 비교하여 그 결과를 true, false로 반환한다.)
//    >, ==, <, >=, !=, <=
//    (boolean 변수는 ==, != 연산자로 비교할 수 있다.)
{
      int x = 3;
      println(x>1);     //true
      println(x>6);     //false
      println(x>3);     //false
      println(x>=3);    //true
      println(x+4!=7);  //false
      println(x+4==7);  //true
}
      void setup() {
        size(500, 500);
      }
      void draw() {
        //doStuff0(); //if 예제
        //doStuff1(); //else 예제
        //doStuff2(); //논리곱 예제
        //doStuff3(); //boolean 변수를 조건으로 사용하기 예제
      }
//  2. if 문: if 다음의 소괄호에 들어있는 boolean 값이 true일 때 다음 문장 또는 중괄호 블록을 실행한다.
//            if 다음의 소괄호에 들어있는 boolean 값이 false라면 다음 문장 또는 중괄호 블록을 실행하지 않고 스킵한다.
      void doStuff0() {
        background(127, 0, 0);
        if (mouseX>width/2.0) { //마우스 커서가 화면의 절반 우측에 위치해야 다음 문장이 수행된다.
          background(0, 0, 127);
        }
      }
//  3. else 문
      void doStuff1() {
        if (mouseX>width/2.0) {
          background(0, 0, 127);
        } else {                  //바로 앞에 위치한 if 문이 적용되지 않은 경우 이 부분이 적용된다.
          background(127, 0, 0);
        }
      }
//    위 예시에서 else {...} 부분을 다음과 같이 작성해도 같은 효과가 나온다.
//    if (mouseX<=width/2.0) {
//      background(127, 0, 0);
//    }
//    하지만 후자의 경우 boolean 값 mouseX<=width/2을 알아내기 위해 계산을 한 번 더 수행해야 한다. (바로 앞에 위치한 
//    if 문의 조건값을 알고 있으면 저절로 알게 되는 값임에도 불구하고.) else 키워드를 사용함으로써 boolean 계산을 
//    필요 이상으로 수행하는 것을 막을 수 있다.
//  4. 논리곱(&&)
      void doStuff2() {
        if (mouseX<width/3.0) {
          background(191, 0, 0);
        } else if (mouseX>=width/3.0 && mouseX<2*width/3.0) { //논리곱(&&)  cf. 논리합(||)
          background(0, 191, 0);
        } else {
          background(0, 0, 191);
        }
      }
//    논리곱, 논리합은 두 boolean 값들의 연산이다. 이를 사용하여 두 boolean 값 모두 true일 때 작동하는 if 문, 또는
//    두 boolean 값 중 하나라도 true일 때 작동하는 if 문을 작성할 수 있다.
//  5. boolean 변수를 if 문의 조건으로 사용하기
      void doStuff3() {
        boolean isSunny = true;
        if (isSunny) { //boolean 변수가 if 문의 조건으로 사용되기도 한다. if 문의 조건을 굳이 isSunny==true로 작성할 필요가 없다.
          noStroke();
          fill(255, 191, 0);
          ellipse(width/2, height/2, 100, 100);
        }
      }
//    boolean 변수 isSunny가 false일 때 if 문을 작동하게 만드려면 그 조건으로
//    if (!isSunny) {
//      ...
//    }
//    을 사용할 수 있다. (이 조건은 sunny==false와 같다.)
