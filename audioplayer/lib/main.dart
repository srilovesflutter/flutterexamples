import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AudioPlayer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Audio Player'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _isPlaying = false;
  AudioPlayer audioPlayer;

  @override
  void initState() {
    super.initState();
    audioPlayer = AudioPlayer();
  }

  playAudioFromLocalStorage(path) async {
    int response = await audioPlayer.play(path, isLocal: true);
    if (response == 1) {
      // success
    } else {
      print('Some error occured in playing from storage!');
    }
  }

  pauseAudio() async {
    int response = await audioPlayer.pause();
    if (response == 1) {
      // success
    } else {
      print('Some error occured in pausing');
    }
  }

  stopAudio() async {
    int response = await audioPlayer.stop();
    if (response == 1) {
      // success
    } else {
      print('Some error occured in stopping');
    }
  }

  resumeAudio() async {
    int response = await audioPlayer.resume();
    if (response == 1) {
      // success
    } else {
      print('Some error occured in resuming');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      RaisedButton(
                        onPressed: () {
                          if (_isPlaying == true) {
                            pauseAudio();
                            setState(() {
                              _isPlaying = false;
                            });
                          } else {
                            resumeAudio();
                            setState(() {
                              _isPlaying = true;
                            });
                          }
                        },
                        child:
                            Icon(_isPlaying ? Icons.pause : Icons.play_arrow),
                        color: Colors.blue,
                      ),
                      RaisedButton(
                        onPressed: () {
                          stopAudio();
                          setState(() {
                            _isPlaying = false;
                          });
                        },
                        child: Icon(Icons.stop),
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                RaisedButton(
                  onPressed: () async {
                    var path =
                        await FilePicker.getFilePath(type: FileType.audio);

                    setState(() {
                      _isPlaying = true;
                    });
                    playAudioFromLocalStorage(path);
                  },
                  child: Text(
                    'Load Audio File',
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.blueAccent,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
