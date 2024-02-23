part of 'counter_bloc.dart';

// Sealed Class

sealed class CounterEvent {}

// EVENT COUNTER INCREMENT
final class CounterIncremented extends CounterEvent {}

// EVENT COUNTER DECREMENT
final class CounterDecremented extends CounterEvent {}
