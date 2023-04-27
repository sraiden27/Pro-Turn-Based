import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class gamePlay extends StatefulWidget {
  const gamePlay({Key? key}) : super(key: key);

  @override
  mainGame createState() => mainGame();
}

class mainGame extends State<gamePlay> {
  Future<void> _play() async {
    String url = 'https://www.echofuneral.net/proturnbased/index.html';
    if (await canLaunchUrl(
      Uri.parse(url),
    )) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }

    if (!mounted) return;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 50, 35, 117),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 50.0),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 15.0),
                    child: Text(
                      'Pro Turn Based',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        height: 1.5,
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 15.0),
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: _play,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 10.0),
                        child: Text(
                          "Play",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
