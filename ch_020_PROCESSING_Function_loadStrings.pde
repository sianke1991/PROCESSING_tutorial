//20부: PROCESSING function: loadString
//  1. loadStrings(filename)
//    파일 내용을 읽어서 각 라인을 원소로 하는 문자열 배열로 반환한다.
//    파일 이름은 확장자 까지 입력한다.
      ArrayList<Integer> steps;
      int barWidth; int barY; int barSpacing;
      void setup() {
        size(600, 600);
        barWidth = 30; barY = height-50; barSpacing = 5;
        steps = new ArrayList<>();
        String[] lines = loadStrings("steps.txt"); //steps.txt는 스케치 폴더의 data 폴더 안에 있는 파일 이름이다.
        //steps.txt 에 있는 라인의 개수에 따라서 문자열 배열 lines의 길이가 달라진다.
        for (String line:lines) {
          steps.add(int(line)); //lines의 각 원소(문자열)를 정수로 변환하여 steps 리스트에 넣는다.
        } //line loop
      }
      void draw() {
        background(191);
        textAlign(CENTER);
        for (int i=0; i<steps.size(); i++) {
          int step = steps.get(i);
          float barHeight = map(step, 0, 1500, 0, 400);
          fill(255);
          rect(125+i*(barWidth+barSpacing), barY, barWidth, -barHeight);
          fill(0);
          text(step, 125+i*(barWidth+barSpacing)+barWidth/2.0, barY+20);
        } //i loop
      }
      
