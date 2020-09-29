import 'package:flutter/material.dart';
//import 'package:flutter_hsvcolor_picker/flutter_hsvcolor_picker.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MyHome1 extends StatefulWidget {
  @override
  _MyHome1State createState() => _MyHome1State();
}

class _MyHome1State extends State<MyHome1> {
  Color currentColor = Colors.white;

  void changeColor(Color color) => setState(() => currentColor = color);
  DateTime _dateTime;
  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    return Center(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orangeAccent,
            title: Text('Profile App'),
            actions: <Widget>[
              IconButton(
                  icon: Icon(Icons.call),
                  onPressed: () {
                    Fluttertoast.showToast(
                        msg: "Meet Soni : 9265288952",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0);
                  })
            ],
          ),
          body: Center(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.grey.shade200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: CircleAvatar(
                      radius: 60.0,
                      backgroundImage: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTTOkHm3_mPQ5PPRvGtU6Si7FJg8DVDtZ47rw&usqp=CAU'),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Name',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)),
                        contentPadding: EdgeInsets.all(20),
                        prefixIcon: Icon(Icons.arrow_forward),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Address',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)),
                        contentPadding: EdgeInsets.all(20),
                        prefixIcon: Icon(Icons.arrow_forward),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    //width: 350,
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: deviceWidth * 0.50,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'dd/mm/yy',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              contentPadding: EdgeInsets.all(20),
                              prefixIcon: Icon(Icons.arrow_forward),
                            ),
                          ),
                        ),
                        Text(_dateTime == null ? '' : _dateTime.toString()),
                        Container(
                          width: deviceWidth * 0.10,
                          child: FlatButton(
                              child: Icon(Icons.calendar_today),
                              onPressed: () {
                                showDatePicker(
                                        context: context,
                                        initialDate: DateTime.now(),
                                        firstDate: DateTime(2000),
                                        lastDate: DateTime(2222))
                                    .then((date) {
                                  setState(() {
                                    _dateTime = date;
                                  });
                                });
                              }),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          //width: 300,
                          margin: EdgeInsets.all(20),
                          child: Text(
                            'choose your color',
                            style: TextStyle(fontSize: 20),
                          ),
                          // decoration: new BoxDecoration(color: _customcolor),
                        ),
                        RaisedButton(
                            elevation: 3.0,
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    titlePadding: const EdgeInsets.all(0.0),
                                    contentPadding: const EdgeInsets.all(0.0),
                                    content: SingleChildScrollView(
                                      child: ColorPicker(
                                        pickerColor: currentColor,
                                        onColorChanged: changeColor,
                                        colorPickerWidth: 300.0,
                                        pickerAreaHeightPercent: 0.7,
                                        enableAlpha: true,
                                        displayThumbColor: true,
                                        showLabel: true,
                                        paletteType: PaletteType.hsv,
                                        pickerAreaBorderRadius:
                                            const BorderRadius.only(
                                          topLeft: const Radius.circular(2.0),
                                          topRight: const Radius.circular(2.0),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                            child: Icon(Icons.color_lens),
                            color: currentColor,
                            textColor: Colors.black54)
                      ],
                    ),
                  ),
                  Container(
                    child: Material(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.red,
                      child: MaterialButton(
                          elevation: 50,
                          child: Text('Submit'),
                          onPressed: () {
                            Navigator.pushNamed(context, 'animation');
                          }),
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
