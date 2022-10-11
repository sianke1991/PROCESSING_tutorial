//19.1부: Arrays in PROCESSING(1)
//  1. random
//    random(high)     : 0 이상 high 미만의 임의의 실수를 반환한다.
//    random(low, high): low 이상 high 미만의 임의의 실수를 반환한다.
//    random 함수가 반환한 실수를 정수로 변환하기 위해 int 함수를 사용할 수 있다.
//    주사위 5개 굴린 결과를 출력한다.
      for (int i=0; i<5; i++) {
        println(int(random(6))+1); //int(random(6))은 0부터 5까지 정수 중 임의의 하나가 된다.
      }
//  2. 배열 생성
      int[] steps = {600, 300, 920}; //배열 선언 및 초기화 (배열의 각 원소를 알고 있을 때 사용 가능)
//    ----- -----
//      ①   ②
//    ①: 각 요소가 정수인 배열
//    ②: 배열 이름
//    Note. printArray 함수로 배열을 콘솔에 출력할 수 있다.
      printArray(steps);  //[0] 600
                          //[1] 300
                          //[2] 920
//    Note. 맨 처음 나오는 요소의 인덱스는 0임에 주의한다.
      println(steps[0]);  //600
//    Note. 배열의 특정 위치의 값을 변경할 수도 있다.
      steps[1] = 250;
      printArray(steps);  //[0] 600
                          //[1] 250
                          //[2] 920
//    steps = {600, 300, 920}; //일단 배열 변수를 선언했다면 이렇게 값을 줄 수는 없다.
      steps = new int[]{600, 300, 920}; //배열 변수를 선언한 뒤에 배열을 할당하려면 이와 같이 수행한다.
      steps = new int[7]; //배열 선언 및 초기화 (배열의 각 원소를 모를 때)
//                   ---
//                    ③
//    ③: 배열의 길이 (배열에 들어있는 원소의 개수)
//    Note. 일단 배열 객체가 생성되었다면 이후에는 그 길이를 변경할 수 없다.
//    Note. 배열의 길이는 배열이름.length 로 얻을 수 있다.
      int liLen = steps.length;
      println(liLen); //7
//  3. 10 일 간의 걸음 수 자료로 막대그래프 그리기
      size(600, 600);
      steps = new int[]{600, 300, 920, 1200, 540, 320, 100, 560, 30, 400};
      int barWidth = 30; int barY = height-50; int barSpacing = 5;
      
      for (int i=0; i<steps.length; i++) {
        float barHeight = map(steps[i], 0, 1500, 0, 400); //steps[i] 값을 화면 세로 길이에 알맞게 재조정하여 변수 barHeight에 담는다.
        fill(255);
        rect(125+i*(barWidth+barSpacing), barY, barWidth, -barHeight);
        //직사각형의 높이를 음수로 지정하면 기준 y 값에서 윗 방향으로 올라가는 사각형을 그린다.
        fill(0);
        textAlign(CENTER); //기준점을 중심으로 좌우대칭으로 문자열이 출력되도록 설정한다.
        text(steps[i], 125+i*(barWidth+barSpacing)+barWidth/2.0, barY+20);
        //막대그래프의 각 막대의 가운데 위치는 [왼쪽 변의 위치값]에서 [막대 폭의 절반]을 더하여 구할 수 있다.
      } //i loop
