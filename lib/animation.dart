import 'package:flutter/material.dart';

class MyAni extends StatefulWidget {
  @override
  _MyAniState createState() => _MyAniState();
}

class _MyAniState extends State<MyAni> with SingleTickerProviderStateMixin {
  var MyAniCon;
  var animation;

  @override
  void initState() {
    super.initState();
    MyAniCon = AnimationController(vsync: this, duration: Duration(seconds: 2));
    print(MyAniCon);

    animation = CurvedAnimation(parent: MyAniCon, curve: Curves.decelerate)
      ..addListener(() {
        setState(() {
          print(animation.value);
        });
      });
    print(animation);
    MyAniCon.forward();
    print(MyAniCon);
  }

  @override
  void dispose() {
    super.dispose();
    MyAniCon.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Card(
            child: GestureDetector(
              onTap: () {
                MyAniCon.forward(from: 0.5);
              },
              child: Container(
                width: 300 * animation.value,
                height: 300 * animation.value,
                color: Colors.amber,
                child: Center(
                  child: Text(
                    'Hello All',
                    style: TextStyle(fontSize: 20 * animation.value),
                  ),
                ),
              ),
            ),
          ),
          RaisedButton(
              child: Icon(Icons.home),
              onPressed: () {
                Navigator.pushNamed(context, 'home');
              })
        ],
      ),
    );
  }
}
