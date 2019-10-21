import 'package:flutter/material.dart';

class Ukm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Column(
          children: [
            ListTile(
              title:
                  Text('Musik', style: TextStyle(fontWeight: FontWeight.w500)),
              subtitle: Text('Kota Surabaya'),
              leading: Icon(
                Icons.music_note,
                color: Colors.blue[500],
              ),
              onTap: () {
                Navigator.pushNamed(context, '/musik');
                print("Detail Ukm");
              },
            ),
            Divider(),
            ListTile(
                title: Text('Pataga',
                    style: TextStyle(fontWeight: FontWeight.w500)),
                leading: Icon(
                  Icons.contact_phone,
                  color: Colors.blue[500],
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/pataga');
                  print('Pataga');
                }),
          ],
        ),
      ),
    );
  }
}

class MusikScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Ukm"),
      ),
      body: new ListView(
        children: <Widget>[
          new Card(
            semanticContainer: true,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Container(
              child: Column(
                children: <Widget>[
                  Image.asset('img/musik.jpg', fit: BoxFit.fill),
                  ListTile(
                    title: Text(
                      'Musik',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: new Text(
                          'Consectetur ea anim pariatur ipsum ea tempor Lorem adipisicing incididunt tempor do et anim sunt. Irure amet eu consequat dolore sunt ut ut sit laboris non aute Lorem mollit adipisicing. Mollit occaecat ea culpa reprehenderit ad proident ut elit in.'),
                    ),
                    leading: Icon(
                      Icons.contact_phone,
                      color: Colors.blue[500],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 10.0),
                child: new RaisedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Back!'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Pataga extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Ukm"),
      ),
      body: new ListView(
        children: <Widget>[
          new Card(
            semanticContainer: true,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Container(
              child: Column(
                children: <Widget>[
                  Image.asset('img/pataga.jpg', fit: BoxFit.fill),
                  ListTile(
                    title: Text(
                      'Pataga',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: new Text(
                          'Et sint Lorem consequat velit. Consequat proident pariatur cupidatat aute exercitation do. Veniam consequat qui cillum tempor cupidatat proident officia elit aliquip consequat est adipisicing. Duis id magna est magna consectetur cupidatat ullamco magna dolor exercitation esse do deserunt sint.'),
                    ),
                    leading: Icon(
                      Icons.contact_phone,
                      color: Colors.blue[500],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 10.0),
                child: new RaisedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Back!'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
