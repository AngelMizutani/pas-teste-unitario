import 'dart:math';

import 'package:test/test.dart';
import 'package:teste_unidade/aprovacao_nota.dart';

main() {
  group('teste do cálculo da média', () {
    test('cálculo média de notas maiores que a média', () {
      expect(calcularMedia(nota1: 6, nota2: 8), 7);
    });

    test('cálculo média de notas menores que a média', () {
      expect(calcularMedia(nota1: 5, nota2: 4), 4.5);
    });
  });

  test('cálculo da maior nota', () {
    expect(calcularMaiorNota(7, 5), 7);
  });

  test('cálculo da menor nota', () {
    expect(calcularMenorNota(7, 5), 5);
  });

  test('deve gerar exceção', () {
    expect(() => calcularMedia(nota1: -5, nota2: 4), throwsException);
  });
}
