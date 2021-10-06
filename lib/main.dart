import 'package:flutter/material.dart';

void main() {
  runApp(const Home());
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Stateful",
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int dataToChange = 0;
  String img =
      'https://st.depositphotos.com/2363887/3566/i/950/depositphotos_35661943-stock-photo-earth-globe-realistic-3-d.jpg';
  List<String> imageArray = [
    'https://st.depositphotos.com/2363887/3566/i/950/depositphotos_35661943-stock-photo-earth-globe-realistic-3-d.jpg',
    'https://assets.climatecentral.org/images/made/10_16_15_Brian_GOESFirstImage_1050_1324_s_c1_c_c.jpg',
    'https://assets.climatecentral.org/images/made/10_15_16_Brian_RetroGOES_1050_812_s_c1_c_c.jpg',
    'https://assets.climatecentral.org/images/made/2019-07-30-zillow-map_820_766_s_c1_c_c.jpg'
  ];

  void changeImage(int i) {
    setState(() {
      img = imageArray[i];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "დავალება 1",
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.all(50.0),
                child: Image.network(
                  '$img',
                )),
            Row(children: [
              Padding(padding: const EdgeInsets.all(60)),
              Column(
                children: [
                  ElevatedButton(
                      onPressed: () {
                        changeImage(0);
                      },
                      // onLongPress: ,
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.red)),
                      child: Text(
                        'დათვი',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      )),
                  ElevatedButton(
                      onPressed: () {
                        changeImage(1);
                      },
                      // onLongPress: ,
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.red)),
                      child: Text(
                        'ზღარბი',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      )),
                ],
              ),
              Column(
                children: [
                  ElevatedButton(
                      onPressed: () {
                        changeImage(2);
                      },
                      // onLongPress: ,
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.red)),
                      child: Text(
                        'კუ',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      )),
                  ElevatedButton(
                      onPressed: () {
                        changeImage(3);
                      },
                      // onLongPress: ,
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.red)),
                      child: Text(
                        'ბუ',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      )),
                ],
              )
            ])
          ],
        ),
      ),
    );
  }
}
