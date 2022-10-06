//14부: 프로세싱에서 한글 사용하기
      void setup() {
        size(1200, 900);
        background(191);
        doStuff0(); //createFont 예제
        doStuff1(); //loadFont 예제
      }
//  1. 스케치 에디터에서 한글을 사용할 수 없다면...
//    Processing 탭 -> Preferences -> 
//      (1) [] Enable complex text input (i.e. Japanese, requires restart of Processing)
//      을 체크한다. 이 설정 후 PROCESSING을 재시작해야 해당 설정이 적용된다.
//      (2) Editor and Console font: [                     ↓] 에서 한글을 지원하는 글씨체를 선택한다.
//  2. 스케치 화면에서 한글 출력: createFont, loadFont 두 함수 중 하나를 선택한다.
//  3. createFont
      PFont font0;
      void doStuff0() {
        printArray(PFont.list()); //현재 PC에 설치된 글씨체를 전부 출력할 수 있다.
//        println(PFont.list().getClass().toString()); //class [Ljava.lang.String; (PFont.list 메서드 이름은 list지만 반환형은 배열이다.)
        font0 = createFont("D2Coding", 32); //글씨체 이름과 문자 크기[px]를 입력한다. (PC에 설치된 글씨체를 사용한다.)
        textFont(font0); //글씨 출력 전 글씨체, 문자 크기 및 글자 색을 설정한다.
        textSize(128);
        fill(0);
        textAlign(CENTER, BOTTOM);
        text("올해 한글날", width/2.0, height/4.0);
      }
//      Note. 이 방식은 현재 PC에 설치된 글씨체를 사용하는 것이므로, 다른 PC에서 실행 시 같은 결과가 나오리라고 보장할 수 없다.
//      이는 다음 조치를 통해 해결할 수 있다.
//      Sketch 탭 -> Show Sketch Folder 로 스케치 폴더를 연 다음
//      스케치 폴더에 data 폴더를 생성하고 이 내부에 글씨체 파일(ttf, otf)을 넣는다.
//      하지만 글씨체 파일을 공유하는 것이 금지된 경우가 있다.
//  4. vlw 파일 생성
//    Tools 탭 -> Create Font... 에서
//    글씨체 선택 -> 글씨체 크기 선택 (크기가 커지면 문자가 선명하게 출력되지만, 그 만큼 파일의 용량도 커진다.)
//    -> [Characters...]를 누른 뒤 ⊙ Specific Unicode Blocks 선택 -> [] Hangul Syllables (한글 음절) 선택
//  5. loadFont
      PFont font1;
      void doStuff1() {
        font1 = loadFont("D2Coding-48.vlw"); //데이터 폴더에 넣어둔 vlw 파일의 이름을 입력한다. (확장자까지 넣어야 한다.)
        textFont(font1);
        textSize(128);
        fill(63, 63, 191);
        textAlign(CENTER, TOP);
        text("올해 한글날", width/2.0, height/4.0*3.0);
      }
//      Note. 이 방식은 각 글자를 그림 파일로 만든 뒤 출력하는 것이므로 크기가 큰 문자를 출력하는 경우 결과가 희미하게 나온다.

      
      
