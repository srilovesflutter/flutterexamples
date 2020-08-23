import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyBlocApp());
}

class MyBlocApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(),
      child: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(body: BlocBuilder<CounterBloc, int>(
        builder: (context, state) {
          return Center(
            child: RaisedButton(
              onPressed: () {
                context.bloc<CounterBloc>().add(CounterEvent.increment);
              },
              child: Text('Bloc: Clicked $state times'),
            ),
          );
        },
      )),
    );
  }
}

// class CounterCubit extends Cubit<int> {
//   CounterCubit() : super(0);

//   void increment() {
//     emit(state + 1);
//   }
// }

enum CounterEvent { increment }

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0);

  @override
  Stream<int> mapEventToState(CounterEvent event) async* {
    switch (event) {
      case CounterEvent.increment:
        yield state + 1;
        break;
    }
  }
}
