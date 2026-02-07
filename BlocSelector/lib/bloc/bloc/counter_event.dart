part of 'counter_bloc.dart';

@immutable
abstract class CounterEvent {}

class IncrementA extends CounterEvent {}

class DecrementA extends CounterEvent {}

class IncrementB extends CounterEvent {}

class DecrementB extends CounterEvent {}
