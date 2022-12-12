import 'package:flutter/material.dart';
import 'package:ghj/erazcalc/calc.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
void main() async{
  runApp( const MyApp());
   await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}
//inheritance
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home:const Home(title: 'Erasto Functions'),
      title: "Erasto Functions",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
    );
  }
}
class Home extends StatefulWidget {

  const Home({super.key, required this.title}) ;
  final String title;
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int counter = 0;
  void incrementcounter(){
    setState(() {
      counter ++;
    });
  }
  void decrementcounter() {
    setState(() {
      counter --;
    });
  }
  void multiplycounter(){
  setState(() {
    counter*=2;
  });
  }
  void dividecounter(){
    setState(() {
      counter~/=2;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.cyan[100],
        title: Text(widget.title),
        actions: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Calc()));
              },
              icon:const Icon(Icons.calculate),

            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Welcome to do Calculations",
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black87),
            ),
            const SizedBox(height: 30,),
            Text('$counter',
            ),
            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: (){
                      incrementcounter();
                    },
                    child: const Text("+")),
               const  SizedBox(width: 10,),
                ElevatedButton(
                    onPressed: (){
                      decrementcounter();
                    },
                    child: const Text("-")),
              ],
            ),
            const SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: (){
                      multiplycounter();
                    },
                    child: const Text("*")),
                const  SizedBox(width: 10,),
                ElevatedButton(
                    onPressed: (){
                      dividecounter();
                    },
                    child: const Text("/")),
              ],
            ),

          ],
        ),
      ),
    );
  }
}

