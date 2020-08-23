import 'package:flutter/material.dart';

class Model {
  final int value;

  Model({this.value = 0});

  static Model of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<ModelMedium>()
        .modelData
        .currentmodel;
  }

  static void update(BuildContext context, Model model) {
    final ModelMedium currentModelState =
        context.dependOnInheritedWidgetOfExactType<ModelMedium>();
    currentModelState.modelData.updateModel(model);
  }
}

class ModelMedium extends InheritedWidget {
  final _CurrentModelState modelData;

  ModelMedium({this.modelData, Key key, Widget child})
      : super(key: key, child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }
}

class CurrentModel extends StatefulWidget {
  final Model initialmodel;
  final Widget child;

  const CurrentModel({Key key, this.initialmodel, this.child})
      : super(key: key);

  @override
  _CurrentModelState createState() => _CurrentModelState();
}

class _CurrentModelState extends State<CurrentModel> {
  Model currentmodel;

  @override
  void initState() {
    super.initState();
    currentmodel = widget.initialmodel;
  }

  void updateModel(Model newModel) {
    setState(() {
      currentmodel = newModel;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ModelMedium(modelData: this, child: MyPage());
  }
}

class InheritedWidgetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CurrentModel(initialmodel: Model(), child: MyPage()),
    );
  }
}

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('SetState Counter: $counter'),
            MyValueContainer(),
            Center(
              child: RaisedButton(
                onPressed: () {
                  counter++;
                  final Model model = Model.of(context);
                  Model.update(
                      context,
                      Model(
                        value: model.value + 1,
                      ));
                },
                child: Text('Increment'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyValueContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('InheritedWidget Counter ${Model.of(context).value}');
  }
}

void main() {
  runApp(InheritedWidgetPage());
}
