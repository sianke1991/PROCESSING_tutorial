//5부 vertex in PROCESSING
      size(1200, 900);
      background(191);
      stroke(0);
      strokeWeight(2);
      fill(63, 63, 255);
//  1. 직선으로 된 도형 그리기
//    각 점들을 입력하면 이들을 어떤 함수가 직선으로 연결해준다.
      beginShape();
        vertex(120, 120);
        vertex(240, 120);
        vertex(240, 240);
        vertex(200, 240);
        vertex(200, 160);
        vertex(120, 160);
        //점을 나열할 때 그 순서에 주의해야 한다.
        //점을 나열할 때 그 순서를 혼동하지 않기 위해 시계 방향으로 나열하는 방법 등을 사용할 수 있다.
      endShape();
//    Note. endShape(); 대신 endShape(CLOSE);를 사용하면 끝점과 시작점 역시 연결하여 닫힌 도형을 그려준다.
//  2. 구멍이 뚫린 도형
      beginShape();
        vertex(600, 120);
        vertex(660, 120);
        vertex(660, 180);
        vertex(720, 180);
        vertex(720, 120);
        vertex(780, 120);
        vertex(780, 300);
        vertex(600, 300);
        beginContour();
          vertex(660, 210);
          vertex(660, 270);
          vertex(720, 270);
          vertex(720, 210);
          //구멍을 구성하는 꼭지점을 나열하는 부분
          //바깥점이 나열된 방향과 반대가 되어야 한다. 예를 들어 바깥점이 시계방향으로 나열되어 있다면,
          //구멍을 구성하는 꼭지점은 반시계방향으로 나열되어야 한다.
        endContour();
      endShape(CLOSE);
//  3. PImage: 이미지를 저장하는 자료형
      PImage sampleImage;
      sampleImage = loadImage("sample01.jpg"); //이미지 파일은 해당 스케치 파일과 같은 디렉토리의 data 폴더 안에 위치하면 된다.
                                               //파일명은 확장자까지 입력해야 한다.
      if (sampleImage!=null)
        image(sampleImage, (width-sampleImage.width/3.0)/2, (height-sampleImage.height/3.0)/3*2, sampleImage.width/3.0, sampleImage.height/3.0); //이미지 파일을 화면에 출력한다.
                                                                                                                                                 //이미지 파일, 시작 위치를 입력한다.
                                                                                                                                                 //옵션으로 가로 길이, 세로 길이를 추가로 입력할 수 있다.
      //읽어온 이미지 파일의 가로, 세로 길이는 .width 및 .height로 조회할 수 있다.
