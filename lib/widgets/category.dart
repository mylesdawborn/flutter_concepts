import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Material(
          child: new CategoryWidget(),
        ),
      ),
    );
  }
}

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          buildCategory(Icons.book, 'Book', Colors.orange),
          buildCategory(Icons.camera, 'Camera', Colors.black),
          buildCategory(Icons.casino, 'Casino', Colors.yellow),
          buildCategory(Icons.cloud, 'Cloud', Colors.purple),
        ],
      ),
    );
  }

  buildCategory(IconData icon, String title, Color color) {
    return InkWell(
       splashColor: Colors.pink,
            highlightColor: Colors.black,
            onTap: () {
              print('I was tapped!');
            },
          child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              icon,
              size: 60.0,
              color: color,
            ),
          ),
          Center(
              child: Text(
            title,
            style: TextStyle(fontSize: 24.0),
          ))
        ],
      ),
    );
  }
}
