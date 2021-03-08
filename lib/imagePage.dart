import 'package:flutter/material.dart';

//StatelessW mein upper camel case
class ImagePage extends StatelessWidget {
  const ImagePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.tealAccent,
      body: Center(
        child: Card(
          elevation: 50.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.tealAccent,
              borderRadius: BorderRadius.circular(50),
              border: Border.all(width: 4, color: Colors.pink),
              image: DecorationImage(
                image: AssetImage('assets/img.png'),
                fit: BoxFit.cover,
              ),
            ),
            width: 200,
            height: 300,
            child: Center(
              child: Text(
                "Hi!",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          size: 24,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
