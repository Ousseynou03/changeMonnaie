import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.brown
      ),
      title: 'Material App',
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({ Key? key }) : super(key: key);


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final _ctr= TextEditingController();
  String res ="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(title: Text("Monnaie")),
      body: Container(
        margin: EdgeInsets.all(7),
        child: Column(
          children: [
            SizedBox(height: 50,),
            TextField(
              controller: _ctr,
              style: TextStyle(color: Colors.blueGrey, fontSize: 45),
              decoration: const InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(40))),
                labelText: 'MAD',
              ),
            ),
            Row(
              
              mainAxisAlignment: MainAxisAlignment.spaceAround,
            
              children: [
              
                ElevatedButton(onPressed: (){
                  var dh = double.parse(_ctr.text);
                setState(() {
                    var euro = dh*0.095;
                    res = euro.toString() + "euros";
                });
               
                }, child: Text("€",style: TextStyle(fontSize: 30),),),
                ElevatedButton(onPressed: (){
                   var dh = double.parse(_ctr.text);
                setState(() {
                    var dollar = dh*0.10;
                    res = dollar.toString() + "dollars";
                });
                }, child: Text("\$",style: TextStyle(fontSize: 30),),),
                ElevatedButton(onPressed: (){
                     var dh = double.parse(_ctr.text);
                setState(() {
                    var livre_sterling = dh*0.079;
                    res = livre_sterling.toString() + "livres";
                });
                }, child: Text("£",style: TextStyle(fontSize: 30),),),
              ],
            ),
            Text( res, style: TextStyle(color: Colors.brown, fontSize: 30),),
          ],
        ),
      ),
    );
  }
}