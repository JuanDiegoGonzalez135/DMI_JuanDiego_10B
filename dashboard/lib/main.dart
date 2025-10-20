import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        
        title: Text(widget.title),
      ),
      //Column Pricipal
      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Row para el encabezado
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.logo_dev, size: 40),
                  Text(
                    'APP-JD_Encabezado ',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.ac_unit_rounded, size: 30, color: Colors.blue,),
                ],
              ),

              SizedBox(height: 20), 

              //Row de los 3 contenedores
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      height: 100,
                      color: Colors.blue,
                      margin: EdgeInsets.all(8),
                      child: Center(child: Text('Tarjeta 1', style: TextStyle(color: Colors.white))),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 100,
                      color: Colors.green,
                      margin: EdgeInsets.all(8),
                      child: Center(child: Text('Tarjeta 2', style: TextStyle(color: Colors.white))),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 100,
                      color: Colors.orange,
                      margin: EdgeInsets.all(8),
                      child: Center(child: Text('Tarjeta 3', style: TextStyle(color: Colors.white))),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20), 

              // Column con dos contenedores grande No entendi lo de seleccion de datos ;(
              Column(
                children: [
                  Container(
                    height: 150,
                    color: Colors.red,
                    margin: EdgeInsets.only(bottom: 16),
                    child: Center(child: Text('Sección 1, No entendi lo de seleccion de datos ;(', style: TextStyle(color: Colors.white))),
                  ),
                  Container(
                    height: 150,
                    color: Colors.purple,
                    child: Center(child: Text('Sección 2, No entendi lo de seleccion de datos ;(', style: TextStyle(color: Colors.white))),
                  ),
                ],

              ),
            ],
          ),
        ),
    );
  }
}
