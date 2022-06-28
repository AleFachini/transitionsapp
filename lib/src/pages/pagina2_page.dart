import 'package:flutter/material.dart';

class PaginaTwoPage extends StatelessWidget {
  PaginaTwoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pagina Two')),
      backgroundColor: Colors.green,
      body: Center(
        child: Text(' Page 2'),
      ),
    );
  }
}
