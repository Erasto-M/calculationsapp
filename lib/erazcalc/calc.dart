import 'package:flutter/material.dart';
class Calc extends StatefulWidget {
  const Calc({Key? key}) : super(key: key);

  @override
  State<Calc> createState() => _CalcState();
}

class _CalcState extends State<Calc> {
  final controller1 = TextEditingController();
  final controller2 = TextEditingController();
   late int num1;
   void doAddition(){
     setState(() {

     });
   }
   void doSubtraction(){
     setState(() {

     });
   }
   void domultiplication(){
     setState(() {

     });
   }
   void dodivision(){
     setState(() {

     });
   }
   void doans(){
     setState(() {
       
     });
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: const Text("Welcome"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 15,left: 15,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 15,),
                  Textfield("First Number", "enter num1", controller1),
                  const SizedBox(height: 30,),
                  Textfield("Second Number", "enter num2", controller2),
                  const SizedBox(height: 50,),
                  Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      button("", "+"),
                      button("", "-"),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      button("", "+"),
                      button("", "-"),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  Widget Textfield(String text1,String text,TextEditingController controller){
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.multiline,

      decoration: InputDecoration(
       hintText: text,
        hintStyle: Theme.of(context).textTheme.headline6,
        labelText: text1,
          hoverColor: Colors.green,
          labelStyle: Theme.of(context).textTheme.headline6,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(color: Colors.green),
        )
      ),
    );
  }
  Widget button(String function,String text){
    return ElevatedButton(

        onPressed: (){
          function;
        },
        child:Text(text) ,
    );
  }
  Widget Material(String function,TextEditingController controller,String text){
    return MaterialButton(
      child: Text(text),
        onPressed: (){
          function;
        });
  }
}
