import 'package:calculatrix/src/model/calculator_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CalculatorController extends StateNotifier<CalculatorModel> {
  CalculatorController(super.state);

  void updateScreenValue(String symbol) =>
      state = state.copyWith(equation: state.getEquation + symbol);

  void clearScreenValue() => state = state.copyWith(equation: "");

  void evaluateScreenValue() =>
      state = state.copyWith(equation: state.evaluateEquation());
}

final calculatorControllerProvider =
    StateNotifierProvider<CalculatorController, CalculatorModel>((ref) {
  return CalculatorController(const CalculatorModel(equation: ""));
});
