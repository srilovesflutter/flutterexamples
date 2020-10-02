import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

List<AudioFile> audiolist = [
  AudioFile(
      title: 'Robo 1 Movie',
      description: 'Sari gama pa 1',
      url:
          'https://file-examples-com.github.io/uploads/2017/11/file_example_MP3_700KB.mp3',
      playingstatus: 0),
  AudioFile(
      title: 'Robo 2 Movie',
      description: 'Sari gama pa 2',
      url:
          'https://file-examples-com.github.io/uploads/2017/11/file_example_MP3_700KB.mp3',
      playingstatus: 0),
  AudioFile(
      title: 'Robo 3 Movie',
      description: 'Sari gama pa 3',
      url:
          'https://file-examples-com.github.io/uploads/2017/11/file_example_MP3_700KB.mp3',
      playingstatus: 0)
];

class AudioFile {
  final String title;
  final String description;
  final String url;
  int playingstatus;

  AudioFile({this.title, this.description, this.url, this.playingstatus = 0});
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  AudioPlayer audioPlayer = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Audio List'),
        ),
        body: MyItem(
          audioPlayer: audioPlayer,
        ));
  }
}

class MyItem extends StatefulWidget {
  final AudioPlayer audioPlayer;

  const MyItem({Key key, this.audioPlayer}) : super(key: key);
  @override
  _MyItemState createState() => _MyItemState();
}

class _MyItemState extends State<MyItem> {
  int result;
  int status = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: audiolist.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () async {
            if (audiolist[index].playingstatus == 0) {
              result = await widget.audioPlayer.stop();
              result = await widget.audioPlayer
                  .play(audiolist[index].url, isLocal: true);

              setState(() {
                for (int i = 0; i < audiolist.length; i++) {
                  audiolist[i].playingstatus = 0;
                }
                audiolist[index].playingstatus = 1;
              });
            } else if (audiolist[index].playingstatus == 1) {
              result = await widget.audioPlayer.stop();
              setState(() {
                for (int i = 0; i < audiolist.length; i++) {
                  audiolist[i].playingstatus = 0;
                }
              });
            }
          },
          child: ListTile(
            leading: Icon(Icons.music_note_outlined),
            title: Text(audiolist[index].title),
            subtitle: Text(audiolist[index].description),
            trailing: audiolist[index].playingstatus == 0
                ? Icon(Icons.play_arrow)
                : Icon(Icons.pause),
          ),
        );
      },
    );
  }
}
