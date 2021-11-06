// 탑레벨 영역의 const
const String toplevelConst = 'this is toplevel const';

class ConstTestClass {
  // 클래스 안에서의 const
  static const String classConst = 'this is class const';
}

void constTestFunction() {
  // 함수 안에서의 const
  const String functionConst = 'this is function const';

  print(functionConst);
  // functionConst = '수정 해볼게요'; 에러 발생
}

void main() {
  print(toplevelConst);
  // toplevelConst = '수정 해볼게요'; 에러 발생

  print(ConstTestClass.classConst);
  // ConstTestClass.classConst = '수정 해볼게요'; 에러 발생

  constTestFunction();

  // const DateTime now = DateTime.now(); 에러 발생
}
