
class MyImageFromAssets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Image.asset(
          'images/fluttercentral.png',
          width: 500.0,
        ),
      ),
    );
  }
}
