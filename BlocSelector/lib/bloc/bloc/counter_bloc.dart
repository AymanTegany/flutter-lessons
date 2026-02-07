import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';
part 'counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState(countA: 0, countB: 0)) {
    on<IncrementA>((event, emit) {
      emit(state.copyWith(countA: state.countA + 1));
    });

    on<DecrementA>((event, emit) {
      emit(state.copyWith(countA: state.countA - 1));
    });

    on<IncrementB>((event, emit) {
      emit(state.copyWith(countB: state.countB + 1));
    });

    on<DecrementB>((event, emit) {
      emit(state.copyWith(countB: state.countB - 1));
    });
  }
}

// الطريقة الثانية بدون استخدام copyWith

/* 
class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState(0, 0)) {
    on<IncrementA>((event, emit) {
      emit(CounterState(state.countA + 1, state.countB));
    });

    on<DecrementA>((event, emit) {
      emit(CounterState(state.countA - 1, state.countB));
    });

    on<IncrementB>((event, emit) {
      emit(CounterState(state.countA, state.countB + 1));
    });

    on<DecrementB>((event, emit) {
      emit(CounterState(state.countA, state.countB - 1));
    });
  }
}

 */
