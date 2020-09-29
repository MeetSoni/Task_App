import 'package:flutter/material.dart';

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Welcome'),
      ),
      body: Container(
        width: 500,
        height: 500,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://microsmallcap.com/wp-content/uploads/sites/2/2018/08/Namaste-Logo-Copy.jpg'))),
            ),
            Container(
              child: RaisedButton(
                  elevation: 40,
                  color: Colors.redAccent,
                  child: Text('Registration'),
                  onPressed: () {
                    Navigator.pushNamed(context, 'reg');
                  }),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: RaisedButton(
                  elevation: 40,
                  color: Colors.redAccent,
                  child: Text('Login'),
                  onPressed: () {
                    Navigator.pushNamed(context, 'login');
                  }),
            )
          ],
        ),
      ),
    );
  }
}
