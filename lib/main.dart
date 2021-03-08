import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My First App',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _width = 200;
  double _height = 200;
  bool changed = false;
  void someFunction() {
    if (changed) {
      _height = 300;
      _width = 300;
    } else {
      _height = 200;
      _width = 200;
    }
    changed = !changed;
  }

  @override
  Widget build(BuildContext context) {
    String src =
        "https://images.unsplash.com/photo-1615122131340-354f40914720?ixid=MXwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyfHx8ZW58MHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=60";
    return Scaffold(
      body: Center(
        child: Material(
          elevation: 50.0,
          child: AnimatedContainer(
            decoration: BoxDecoration(
                color: Colors.tealAccent,
                // borderRadius: BorderRadius.circular(50),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50))),
            duration: Duration(milliseconds: 300),
            curve: Curves.bounceInOut,
            width: _width,
            height: _height,
            // child: Image.network(
            //   src,
            //   fit: BoxFit.cover,
            // ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          size: 24,
        ),
        onPressed: () {
          print('Click');
          setState(() {
            someFunction();
          });
        },
      ),
    );
  }
}
