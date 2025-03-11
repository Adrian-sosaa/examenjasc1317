import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('List View Builder'),
          backgroundColor: Colors.deepPurple, // Color de la AppBar
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
          ],
        ),
        body: ListView(
          children: <Widget>[
            _buildListItem('Apple', 'A'),
            _buildListItem('Food', 'F'),
            _buildListItem('Product', 'P'),
            _buildListItem('Item', 'I'),
            _buildListItem('List View', 'L'),
            _buildListItem('New App', 'N'),
            _buildListItem('Design', 'D'),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'JAN ADRIAN SOSA CORDERO 22308051281317',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
          backgroundColor: Colors.deepPurple, // Color del FAB
        ),
      ),
    );
  }

  Widget _buildListItem(String title, String iconLetter) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.deepPurple, // Color del CircleAvatar
        child: Text(
          iconLetter,
          style: TextStyle(color: Colors.white),
        ),
      ),
      title: Text(title),
    );
  }
}
