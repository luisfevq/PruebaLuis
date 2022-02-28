part of 'bloc.dart';

abstract class Test1Event extends Equatable {
  const Test1Event();

  @override
  List<Object> get props => [];
}

class LoadEvent extends Test1Event {
  const LoadEvent();
}
