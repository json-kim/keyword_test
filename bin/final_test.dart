final String toplevelFinal = 'this is toplevel final';

class FinalTest {
  final String classFinal;

  FinalTest({required this.classFinal});
}

void main() {
  // toplevelFinal = '수정 해볼게요'; 에러 발생
  print(toplevelFinal);

  final String functionFinal = 'this is function final';
  // functionFinal = '수정 해볼게요'; 에러 발생
  print(functionFinal);

  FinalTest finalTest = FinalTest(classFinal: 'this is class final');
  // finalTest.classFinal = '수정 해볼게요'; 에러 발생
  print(finalTest.classFinal);
}
