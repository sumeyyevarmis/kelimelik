import 'package:flutter/material.dart';
import 'main.dart';

export 'package:deneme1/KelimeEkle.dart';

class Kelimeler extends StatefulWidget {
  const Kelimeler({super.key});

  @override
  State<Kelimeler> createState() => _KelimelerState();
}

class _KelimelerState extends State<Kelimeler> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.teal[100],
        appBar: AppBar(
          backgroundColor: Colors.teal[800],
          centerTitle: true,
          title: Text("Kelimelerim",style: TextStyle(color: Colors.white)),
        ),
        body: Center(
          child: Column(
            children: [

              Container(
                padding: EdgeInsets.all(16.0),
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => AnaSayfa()),
                    );
                  },
                  child: Text("Geri",style: TextStyle(color: Colors.black, fontSize: 15),),
                  style: ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(Colors.teal),
                    padding: MaterialStatePropertyAll(EdgeInsets.all(20.0)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

