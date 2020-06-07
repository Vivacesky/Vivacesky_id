import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: VivaceskyCard()));
}

final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
final SnackBar snackBar = const SnackBar(content: Text('This is a snackbar'));

class VivaceskyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.grey[50],
        appBar: AppBar(
          title: Text('Vivacesky ID Card'),
          centerTitle: true,
          backgroundColor: Colors.red[900],
          elevation: 5.0,
          leading: Icon(Icons.menu),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.add_alert),
              tooltip: 'Open Alert',
              onPressed: () {
                scaffoldKey.currentState.showSnackBar(snackBar);
              },
            )
          ],
        ),
        body: Card(
          elevation: 5,
          margin: EdgeInsets.all(20),
          child: Padding(
            padding: EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage('assets/profile.jpg'),
                        ),
                        title: Text('Furkan Pinar'),
                        subtitle: Text('An application developer.'),
                      ),
                      Divider(
                        height: 60,
                        color: Colors.red[400],
                      ),
                      Row(
                        children: <Widget>[
                          Icon(Icons.person),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              'NAME',
                              style: TextStyle(
                                  color: Colors.grey[600],
                                  letterSpacing: 2.0,
                                  fontSize: 14),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        'Furkan Pinar',
                        style: TextStyle(
                            color: Colors.red[600],
                            letterSpacing: 1.0,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Row(
                        children: <Widget>[
                          Icon(Icons.calendar_today),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              'BIRTHDAY',
                              style: TextStyle(
                                  color: Colors.grey[600],
                                  letterSpacing: 2.0,
                                  fontSize: 14),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        '30/06/1998',
                        style: TextStyle(
                            color: Colors.red[600],
                            letterSpacing: 1.0,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Row(
                        children: <Widget>[
                          Icon(Icons.email),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              'EMAIL',
                              style: TextStyle(
                                  color: Colors.grey[600],
                                  letterSpacing: 2.0,
                                  fontSize: 14),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text('info@furkanpinar.be',
                          style: TextStyle(
                              color: Colors.red[600],
                              letterSpacing: 1.0,
                              fontSize: 20,
                              fontWeight: FontWeight.w700)),
                    ]),
                RaisedButton(
                  onPressed: () {},
                  child: Text('Logout'),
                )
              ],
            ),
          ),
        ));
  }
}
