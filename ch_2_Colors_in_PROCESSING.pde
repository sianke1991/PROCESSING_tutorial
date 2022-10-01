//2부 Colors in PROCESSING
      size(1200, 900);
//  1. 색을 사용할 수 있는 함수
//    background(color); //배경색 지정
//    stroke(color);     //선 색 지정
//    fill(color);       //면 색 지정
//    색이 들어간 도형을 그리기 위해선 먼저 색을 지정해야 한다.
      stroke(0);
      fill(255); //검은 선, 하얀 면으로 먼저 설정한 후
      rect(50, 50, 200, 200); //사각형을 그린다.
//    Note. 무채색의 경우 0(빛의 최소치)은 검은색, 255(빛의 최대치)는 흰색을 의미한다.
//  2. RGB
      stroke(255, 0, 0); //적색 선
      stroke(0, 255, 0); //녹색 선
      stroke(0, 0, 255); //청색 선
      stroke(255, 255, 0); //황색 선
//    Note. Tool -> Color Selector (도구 -> 색상 선택)에서 원하는 색상의 RGB 값을 구할 수 있다.
//    Note. RGB로 색을 지정할 때 10진법 수 세 개 대신에 16진법 수를 사용할 수 있다.
//    16진법으로 색을 지정할 떄는 수 앞에 # 마크를 붙여준다.
      stroke(79, 185, 138); stroke(#4FB98A);
//    0-255 사이의 정수는 16진법으로 두 자리로 표현 가능하다. 위 예시의 경우 79 = 0x4F, 185 = 0xB9, 138 = 8A 이다.
//  3. 불투명도(opacity) α
      stroke(191, 127); //반투명한 무채색 선
      stroke(255, 63, 63, 127); //반투명한 유채색 선
//    색을 지정할 때 무채색을 나타내는 값 하나에 하나를 더 추가하거나, 유채색을 나타내는 값 셋에 하나를 더 추가하여 불투명도를 지정할 수 있다.
//    (위 예시의 경우 127이 불투명도이다.) 불투명도는 0-255 사이의 값을 가질 수 있으며 0은 완전 투명, 255는 완전 불투명을 의미한다.
//  4. 선 없애기 / 면 없애기
      noStroke(); noFill();
//  5. 색을 지정하는 다른 방법: HSB
//    colorMode(RGB);가 아닌 colorMode(HSB);로 설정했다면 색은 HSB(색상, 채도, 명도)로 지정해야 한다.
//    기본적으로 HSB 모드도 각 변수는 0-255 사이의 값을 가지지만 편리성을 위해 다음과 같이 각 변수의 범위를 지정할 수 있다.
      colorMode(HSB, 360, 100, 100, 100);
//    hue의 범위는 0-360, saturation, brightness, opacity의 범위는 0-100이다.
      stroke(0, 100, 100); //적색 선
      stroke(60, 100, 100); //황색 선
      stroke(120, 100, 100); //녹색 선
      stroke(180, 100, 100); //청녹색(Cyan) 선
      stroke(240, 100, 100); //청색 선
      stroke(300, 100, 100); //자주색(Magenta) 선
//    Note. CMYK 방식은 기본적으로 제공되지 않는다. 별도의 라이브러리를 설치해야 한다.
      colorMode(RGB); //컬러모드 디폴트로 복구
      noStroke();
//  6. blendMode: 두 색이 겹칠 때 방식을 설정할 수 있다.
      blendMode(ADD); //겹쳐지는 부분이 밝아짐
      blendMode(MULTIPLY); //겹쳐지는 부분이 어두워짐
      //따로 설정하지 않으면 겹쳐지는 부분은 나중에 그려진 도형의 색을 갖는다. 나중에 그려진 도형이 이전에 그려진 도형을 덮게 된다.
      fill(255, 0, 0);
      ellipse(300, 450, 400, 400);
      fill(0, 255, 0);
      ellipse(400, 450, 400, 400);
      