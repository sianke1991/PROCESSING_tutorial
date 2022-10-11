//19.2부: Arrays in PROCESSING(2)
      void setup() {
        doStuff0();
        doStuff1();
        doStuff2();
      }
//  4. 배열 정렬
      void doStuff0() {
        int[] randomArray0 = new int[5];
        for (int i=0; i<randomArray0.length; i++) {
          randomArray0[i] = int(random(30));
          //randomArray0의 각 원소는 0-29 중 임의의 정수가 된다.
        } //i loop
        printArray(randomArray0);
        int[] randomArray1 = randomArray0;
        randomArray1 = sort(randomArray1); //본 배열을 정렬하고 싶은 경우
        int[] randomArray2 = sort(randomArray0); //배열 원본은 보존하고 정렬된 결과를 사용하고 싶은 경우
        int[] randomArray3 = reverse(sort(randomArray0)); //내림차순 정렬
        printArray(randomArray0); //기존의 randomArray0이 그대로 출력된다.
        printArray(randomArray1); //randomArray0이 정렬된 결과가 출력된다.
        printArray(randomArray2); //randomArray0이 정렬된 결과가 출력된다.
        printArray(randomArray3); //randomArray0이 내림차순 정렬된 결과가 출력된다,
//      4.1 sort 
//      sort 함수는 배열을 입력받아 오름차순(최소치부터 시작하여 점점 증가하는 순서)대로 정렬한 결과(배열)을 반환한다.
//        randomArray1 = sort(randomArray1);
//      은 randomArray1을 정렬한 결과를 randomArray1에 할당하는 것이므로 결과적으로 randomArray1이 정렬된다.
//        randomArray2 = sort(randomArray0);
//      은 randomArray0을 정렬한 결과를 randomArray2에 할당하는 것이다. 여기서 randomArray0은 변화가 없음에 주의해야 한다. 단순히
//        sort(randomArray0);
//      로 sort 함수를 호출했다고 인자로 들어간 randomArray0가 정렬되는 것은 아니다. (cf. java.util.Arrays.sort 메서드의 작동 방식)
//      4.2 reverse 
//      reverse 함수는 배열을 입력받아 그 순서를 반대로 한 결과(배열)을 반환한다.
//      배열을 내림차순(최대치부터 시작하여 점점 감소하는 순서)대로 정렬하기 위해 sort 함수로 오름차순 정렬한 결과를
//      reverse 함수로 뒤집는 방법을 사용할 수 있다.
//        randomArray3 = reverse(sort(randomArray0));
//      sort 함수와 비슷하게 단순히 reverse 함수를 호출했다고 인자로 들어간 배열의 순서가 뒤집히는 것은 아니다.
      }
//  5. 주사위 5개를 굴려서 나온 포커 핸드 판별하기
      void doStuff1() {
        int[] dice = new int[5];
        for (int i=0; i<dice.length; i++) {
          dice[i] = int(random(6))+1; //각 주사위 결과 값은 1-6 정수 중 하나이다.
        }
        printArray(dice); //주사위 5개 굴린 결과를 출력한다.
        println(getHandType(dice[0], dice[1], dice[2], dice[3], dice[4]));
      }
      
      enum HandType {
        QUINT,
        QUADS,
        LARGE_STRAIGHT,
        FULL_HOUSE,
        SMALL_STRAIGHT,
        TRIPS,
        TWO_PAIR,
        BUST
      }
      HandType getHandType(int val0, int val1, int val2, int val3, int val4) {
        int[] vals = {val0, val1, val2, val3, val4};
        vals = sort(vals); //인자로 받은 val0, ... val4를 정렬하여 그 결과를 보관한다.
        int liFlag0 = 0, liFlag1 = 0;
        if (vals[0]==vals[1]) liFlag0 |= 8; //인자로 받은 값 중 짝(페어)이 있으면 이를 liFlag0에 기록한다.
        if (vals[1]==vals[2]) liFlag0 |= 4;
        if (vals[2]==vals[3]) liFlag0 |= 2;
        if (vals[3]==vals[4]) liFlag0 |= 1;
        switch (liFlag0) {
          case 15:
            return HandType.QUINT;
          case 14: case 7:
            return HandType.QUADS;
          case 13: case 11:
            return HandType.FULL_HOUSE;
          case 12: case 6: case 3:
            return HandType.TRIPS;
          case 10: case 9: case 5:
            return HandType.TWO_PAIR;
          case 8: case 4: case 2: case 1:
            liFlag1 = 1; //인자로 받은 값이 원 페어일 경우
            break;
          case 0:
            liFlag1 = 2; //인자로 받은 값이 전부 다른 경우
            break;
        } //liFlag0 switch
        switch (liFlag1) {
          case 1: //when there is a pair
            return vals[4]-vals[0]==3 ? HandType.SMALL_STRAIGHT : HandType.BUST;
          case 2: //when there are no pairs
            return vals[4]-vals[0]==4 ? HandType.LARGE_STRAIGHT :
                   vals[4]-vals[1]==3 ? HandType.SMALL_STRAIGHT :
                   vals[3]-vals[0]==3 ? HandType.SMALL_STRAIGHT : HandType.BUST;
           default:
             return HandType.BUST;
        } //liFlag1 switch
      }
//  6. max
//    수치 둘, 셋 또는 수치 배열을 입력 받아 그 중 최대값을 반환한다.
      void doStuff2() {
        int a = max(5, 9); //a는 9가 된다.
        int b = max(-4, -12); //b는 -4가 된다.
        float c = max(12.3, 230.24); //c는 230.24가 된다.
        int[] values = {9, -4, 362, 21};
        int d = max(values); //d는 362가 된다.
        println(a);
        println(b);
        println(c);
        println(d);
//      주어진 값 중 가장 큰 값을 찾는 함수인 max는 둘 또는 세 개의 값을 인자로 받거나 값의 배열을 인자로 받고,
//      인자로 받은 값 중 (또는 인자로 받은 배열의 원소 중) 가장 큰 값을 반환한다.
//      인자로 주어진 값이 정수일 경우 정수를, 실수일 경우 실수를 반환한다. (주어진 값 중 가장 작은 값을 찾는 함수인
//      min 역시 비슷한 문법을 갖는다.)
      }
      
      
