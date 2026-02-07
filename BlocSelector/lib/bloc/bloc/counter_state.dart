part of 'counter_bloc.dart';

@immutable
class CounterState {
  final int countA;
  final int countB;

  const CounterState({required this.countA, required this.countB});

  CounterState copyWith({int? countA, int? countB}) {
    return CounterState(
      countA: countA ?? this.countA,
      countB: countB ?? this.countB,
    );
  }
}

// الطريقة الثانية بدون استخدام copyWith

/* 
sealed class CounterState {}

class CounterInitial extends CounterState {}

class CounterAUpdated extends CounterState {
  final int countA;
  CounterAUpdated(this.countA);
}

class CounterBUpdated extends CounterState {
  final int countB;
  CounterBUpdated(this.countB);
}

 */
