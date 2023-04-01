import 'package:equatable/equatable.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorModel extends Equatable {
  final String _equation;

  const CalculatorModel({equation = ""}) : _equation = equation;

  String get getEquation => _equation;

  String evaluateEquation() {
    Parser p = Parser();
    ContextModel cm = ContextModel();
    Expression exp = p.parse(_equation);
    return exp.evaluate(EvaluationType.REAL, cm).toString();
  }

  CalculatorModel copyWith({
    String? equation,
  }) {
    return CalculatorModel(
      equation: equation ?? _equation,
    );
  }

  @override
  List<Object?> get props => [_equation];
}
