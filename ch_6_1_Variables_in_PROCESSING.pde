//6.1부: Variables in PROCESSING(1)
//  1. 변수 타이프
//    int     정수형 (e.g. -7, 0, 32, 172)
//    float   실수형 (e.g. -17.032, 0.0027, 180.332)
//    boolean 논리자료형 (true/false)
//    char    문자   (e.g. 'a', 'B')
//    color   색
//  2. 변수 선언 및 초기화
//    type    name      = value;
      int     life      = 3;
      int     numPeople = 23;
      float   temp      = 23.5;
      float   volume    = 50.5;
      boolean raining   = true;
      char    ch        = 'a';
      char    ch2       = ' '; //공백 한 칸
      char    ch3       = '한';
      String  msg       = "여러 문자들";
//    Note. 정수형 변수에 소수점이 포함된 수치를 넣을 수 없다.
//    Note. char 형 변수에는 문자 1 개를 넣을 수 있다. 문자 1 개는 작은 따옴표로 포장한다.
//    Note. 둘 이상의 문자들은 String 형 Object에 담을 수 있다. (String과 같은 Object 타이프 명은 대문자로 시작한다.)
//    둘 이상의 문자열은 큰 따옴표로 포장한다.
//  3. println(변수명); //변수에 들어가 있는 값을 콘솔 영역에 표시한다.
      println(life); println(numPeople);
      println(temp); println(volume);
      println(raining);
      println(ch); println(ch2); println(ch3);
      println(msg);
{
      String a = "3";
      String b = "7";
      println(a+b); //37이 출력된다.
      int x = 3;
      int y = 7;
      println(x+y); //10이 출력된다.
}
//  4. 색 변수
//    type    name      = value;
      color   col       = color(200, 0, 0); //좌변의 color는 자료형을, 우변의 color()는 색 변수 값을 반환하는 함수이다.
      color   col2      = #DD0000;
//    Note. PFont(글꼴), PImage(이미지 파일)...String(문자열)처럼 Object는 그 타이프 명이 대문자로 시작한다.
//  5. 변수 사용의 의의
//    값을 재사용할 수 있다.
//    값을 추적하고 갱신이 가능하다.
//    Note. 동명의 변수를 두 번 이상 선언할 수 없다.
//    Note. 변수 타이프에 맞지 않은 값을 그 변수에 할당(assignment) 할 수 없다. (e.g. int 형 변수에 소수점이 포함된 실수값 할당 불가)
//    Note. 한 변수의 타이프를 변경할 수 없다.
//  6. 할당(=): 할당 기호 우측의 값을 할당 기호 좌측의 변수에 넣는다.
{
      int x;
      x = 10; //변수 x에 10이라는 값을 할당한다. x ← 10;
      int y = x; //변수 y에 [변수 x에 들어있는 값]을 할당한다. y ← x;
      println(y); //값 10이 출력된다.
}
{
      int x = 10;
      int y = 15;
      y = x; //변수 y에 [변수 x에 들어있는 값]을 할당한다. y ← x;
      println(y); //값 10이 출력된다.
      println(x); //값 10이 출력된다.
}
{
      int x = 10;
      x = x+5; //변수 x에 (x+5)라는 값을 할당한다. x ← (x+5);
      println(x); //값 15가 출력된다.
}
//  7. 변수를 작명할 때, 해당 변수에 들어있는 값이 무엇인지 알아보기 쉽게 작명하자.
//    e.g. 어떤 사람의 나이를 저장하는 변수는 int a; 보다는 int age;가 더 직관적이다.
      
