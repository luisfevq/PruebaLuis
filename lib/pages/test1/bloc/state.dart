part of 'bloc.dart';

@immutable
abstract class Test1State extends Equatable {
  final Model model;
  const Test1State(this.model);

  @override
  List<Object> get props => [model];
}

class InitialState extends Test1State {
  const InitialState(Model model) : super(model);
}

class LoadingState extends Test1State {
  const LoadingState(Model model) : super(model);
}

class LoadedState extends Test1State {
  const LoadedState(Model model) : super(model);
}

class LoadingBannersState extends Test1State {
  const LoadingBannersState(Model model) : super(model);
}

class LoadedBannersState extends Test1State {
  const LoadedBannersState(Model model) : super(model);
}

class ErrorState extends Test1State {
  const ErrorState(Model model) : super(model);
}

class Model extends Equatable {
  final List<Movie> movies;

  const Model({
    this.movies = const [],
  });

  Model copyWith({
    List<Movie>? movies,
  }) {
    return Model(
      movies: movies ?? this.movies,
    );
  }

  @override
  List<Object?> get props => [movies];
}
