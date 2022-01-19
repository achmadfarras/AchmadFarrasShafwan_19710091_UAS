import 'package:flutter/material.dart';
import 'package:uas_19710091/component/customListTile.dart';
import 'package:uas_19710091/model/article_model.dart';
import 'package:uas_19710091/services/api_services.dart';
import 'package:uas_19710091/splash.dart';
import 'package:uas_19710091/pages/news.dart';
import 'package:uas_19710091/pages/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) => HomeScreen()
      },
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("News App",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold)),
          backgroundColor: Colors.blueAccent[400],
          centerTitle: true,
        ),
        body: Container(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: GridView(
              children: [
                // AWAL BERITA OTOMOTIVE
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => OtoNews()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blueAccent[400],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'images/otoicon.png',
                          width: 180,
                        )
                      ],
                    ),
                  ),
                ),
                // AKHIR BERITA OTOMOTIVE
                // ---------- <> ----------
                // AWAL BERITA OLAHRAGA
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SportNews()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blueAccent[400],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'images/sporticon.png',
                          width: 130,
                        )
                      ],
                    ),
                  ),
                ),
                // AKHIR BERITA OLAHRAGA
                // ---------- <> ----------
                // AWAL PROFILE
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ProfileView()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blueAccent[400],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'images/profileicon.png',
                          width: 130,
                        )
                      ],
                    ),
                  ),
                ),
                //AKHIR PROFILE
              ],
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
            ),
          ),
        ));
  }
}
