import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: BlocProvider(
      create: (context) {
        return CounterBloc();
      },
      child: MyHomePage(),
    ));
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CounterBloc, int>(
        builder: (context, state) {
          return Center(
            child: RaisedButton(
              onPressed: () {
                context.bloc<CounterBloc>().add(CounterEvent.increment);
              },
              child: Text('Clicked $state times'),
            ),
          );
        },
      ),
    );
  }
}

enum CounterEvent {
  increment,
}

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
