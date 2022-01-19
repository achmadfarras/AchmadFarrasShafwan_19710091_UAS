import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {
  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PROFILE",
            style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold)),
        backgroundColor: Colors.blueAccent[400],
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 65.0,
            backgroundImage: AssetImage('images/farras.jpg'),
          ),
          SizedBox(
            height: 30,
            width: 150,
          ),
          Text(
            'Achmad Farras Shafwan',
            style: TextStyle(
                fontFamily: 'Raleway',
                fontSize: 35.0,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 50.0,
            width: 150.0,
            child: Divider(
              color: Colors.blueAccent[400],
            ),
          ),
          Card(
            color: Colors.blueAccent[400],
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              leading: Text(
                'NPM    :',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
              title: Text(
                '19710091',
                style: TextStyle(color: Colors.white, fontSize: 16.0),
              ),
            ),
          ),
          Card(
            color: Colors.blueAccent[400],
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              leading: Text(
                'Kelas   :',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
              title: Text(
                '5A SI REGULER PAGI BANJARMASIN',
                style: TextStyle(color: Colors.white, fontSize: 16.0),
              ),
            ),
          ),
          Card(
            color: Colors.blueAccent[400],
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              leading: Text(
                'Kontak :',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
              title: Text(
                'achmadfarras273@gmail.com',
                style: TextStyle(color: Colors.white, fontSize: 16.0),
              ),
            ),
          ),
          Card(
            color: Colors.blueAccent[400],
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              leading: Text(
                'Alamat :',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
              title: Text(
                'JL. CENDRAWASIH NO.08',
                style: TextStyle(color: Colors.white, fontSize: 16.0),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
