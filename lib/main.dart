import 'package:flutter/material.dart';
import 'KelimeEkle.dart';
import 'Kelimeler.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AnaSayfa(),
    );
  }
}


class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.teal[100],
        appBar: AppBar(
          backgroundColor: Colors.teal[800],
          centerTitle: true,
          title: Text("Kelimelik", style: TextStyle(color: Colors.white)),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(
                height: 100,
              ),
              Container(
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => KelimeEkle() )
                      );
                    },
                  child:Text("Kelime Ekle",style: TextStyle(color: Colors.black, fontSize: 15),),
                  style: ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(Colors.teal),
                  padding: MaterialStatePropertyAll(EdgeInsets.all(20.0)),
                  ),
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              Container(
                child: ElevatedButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Kelimeler() )
                  );
                },
                  child:Text("Kelimelerim",style: TextStyle(color: Colors.black, fontSize: 15),),
                  style: ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(Colors.teal),
                    padding: MaterialStatePropertyAll(EdgeInsets.all(20.0)),
                  ),
                ),
              ),
              const SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}



