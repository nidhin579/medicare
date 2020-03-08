import 'package:flutter/material.dart';
import 'package:tkm_app/Constants.dart';
import 'package:tkm_app/ui/login_page.dart';

void main() {
  runApp(MaterialApp(
    title: 'APP',
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Patient Monitoring System',
      theme: new ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: new LoginPage(),
    );
  }
}
class Page1 extends StatelessWidget {
  Widget _popButton() {
    return PopupMenuButton<String>(
      itemBuilder: (BuildContext context) {
        return Constants.choices.map((String choice) {
          return PopupMenuItem<String>(
            value: choice,
            child: Text(choice),
          );
        }).toList();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/background.png'),
                    fit: BoxFit.cover)),
          ),
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(right: 350)),
                  _popButton()
                ],
              ),
              Padding(padding: EdgeInsets.only(bottom: 10)),
              Row(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(right: 135)),
                  Center(
                    child: Image.asset(
                      'images/NV.jpg',
                      height: 140,
                      width: 140,
                    ),
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.only(bottom: 10)),
              Row(children: <Widget>[Padding(padding: EdgeInsets.only(right: 70)), Text('Kripa Susan Shaji' , textScaleFactor: 2,)],),
              Padding(padding: EdgeInsets.only(bottom: 10)),
              Row(children: <Widget>[Padding(padding: EdgeInsets.only(right: 70)), Text('Diarrhoea' , textScaleFactor: 2,)],),
              Padding(padding: EdgeInsets.only(bottom: 10)),
              Row(children: <Widget>[Padding(padding: EdgeInsets.only(right: 70)), Text('0+ve' , textScaleFactor: 2,)],),
              Padding(padding: EdgeInsets.only(bottom: 10)),
              Row(children: <Widget>[Padding(padding: EdgeInsets.only(right: 70)),Text('Doctor : ',textScaleFactor: 1.5,), Text(' Dr. Vasudev' , textScaleFactor: 2,)],),
              Padding(padding: EdgeInsets.only(bottom: 10)),
              Row(children: <Widget>[Padding(padding: EdgeInsets.only(right: 70)),Text('Nurse in charge : ',textScaleFactor: 1.5,), Text('Praveena K' , textScaleFactor: 2,)],),
              Padding(padding: EdgeInsets.only(bottom: 10)),
              Row( 
                children: <Widget>[Padding(padding: EdgeInsets.only(right: 160)),
                  RaisedButton(
                    color: Color.fromARGB(-50, 113, 183, 249),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Page2()));
                    },
                    child: Text('DETAILS'),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/background.png'),
                    fit: BoxFit.cover)),
                    child:  RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
          ),
      ),
    );
  }
}
