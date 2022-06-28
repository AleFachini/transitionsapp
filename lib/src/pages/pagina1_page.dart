import 'package:flutter/material.dart';
import 'package:transitionsapp/src/pages/pagina2_page.dart';

class PaginaOnePage extends StatelessWidget {
  PaginaOnePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pagina One')),
      backgroundColor: Colors.amber,
      body: Center(
        child: Text(' Page'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (() {
          Navigator.push(context, _crearRoute());
        }),
        child: Icon(Icons.ac_unit),
      ),
    );
  }

  Route _crearRoute() {
    return PageRouteBuilder(
      pageBuilder: (BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation) {
        return PaginaTwoPage();
      },
      //transitionDuration: Duration(seconds: 2),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        final curvedAnimation =
            CurvedAnimation(parent: animation, curve: Curves.easeInOut);
        return SlideTransition(
          //Position sirve para determinar por donde entra o sale la pagina
          position: Tween<Offset>(begin: Offset(0.5, 1.0), end: Offset.zero)
              .animate(curvedAnimation),
          child: PaginaTwoPage(),
        );
      },
    );
  }
}
