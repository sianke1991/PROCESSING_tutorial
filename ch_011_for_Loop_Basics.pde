//11부: for Loop Basics
      size(500, 500);
      noFill();
      for (int i=0; i<10; i++) {
//         -------  ----  ---
//           ①      ②    ④

        ellipse(200, 200, i*20, i*20); 
//      ------------------------------
//                    ③
      }
//    ①: 변수 i를 선언하고, 초기값을 0으로 할당한다.
//    ②: 현재 i의 값이 10보다 작은가?
//        참일 경우, ③번으로 간다.
//        거짓일 경우, 반복문을 종료한다.
//    ③: 반복문 안의 내용을 실행한다.
//    ④: i 변수의 값을 업데이트한다.
//        ②번으로 되돌아가 업데이트 된 변수치로 조건문을 다시 평가한다.
//    Note. 반복문으로 사용되는 조건문은 반드시 언젠가는 거짓이 되어야 한다. (cf. 무한루프)
//    Note. for loop의 ④번 뒤에는 세미콜론(;)을 붙이지 않는다.
