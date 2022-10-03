//6.2부: Variables in PROCESSING(2)
//  8. 변수의 범위(scope), 전역 변수(global variables), 지역 변수(local variables)
      color gcColor; //전역 변수 선언, 이 변수는 setup 및 draw 함수에서도 사용 가능하다.
      void setup() {
        size(200, 200);
        color lcColor = color(0, 200, 0); //지역 변수 선언, 이 변수는 setup 함수 내에서만 사용 가능하다.
        background(lcColor);
        gcColor = color(0, 0, 200); //전역 변수 gcColor에 값이 할당된다.
      }
      
      void draw() {
        //background(lcColor); //The variable "lcColor" does not exist.
                               //setup 함수 내에서 선언한 변수 lcColor는 draw 함수 내에서는 사용할 수 없다.
        background(gcColor);   //전역변수 gcColor는 draw 함수 내에서 사용할 수 있다.
      }
//    Note. 프로그램이 복잡해지거나 다른 라이브러리와 복합하여 사용할 때는 전역 변수를 다수 사용할 때
//    예상하지 못한 결과가 나올 수 있다.
