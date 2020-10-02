class ToDo {
  final String description;

  ToDo({this.description});

  Map<String, dynamic> converttotablevalues() {
    return {
      'description': description,
    };
  }
}
