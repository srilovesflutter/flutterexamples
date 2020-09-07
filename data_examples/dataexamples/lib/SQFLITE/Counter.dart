class Counter {
  int num;

  Counter({this.num = 10});

  Map<String, dynamic> toMap() {
    return {'num': num};
  }
}
