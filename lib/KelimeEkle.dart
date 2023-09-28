import 'package:flutter/material.dart';
import 'main.dart';

final List<Map<String, dynamic>> _kelime = [];
TextEditingController kelimeController = TextEditingController();
String secilenKelime = "";
String yeniKelime = "";

class KelimeEkle extends StatefulWidget {
  const KelimeEkle({super.key});

  @override
  State<KelimeEkle> createState() => _KelimeEkleState();
}

class _KelimeEkleState extends State<KelimeEkle> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.teal[100],
        appBar: AppBar(
          backgroundColor: Colors.teal[800],
          centerTitle: true,
          title: Text("Kelime Ekle",style: TextStyle(color: Colors.white)),
        ),
        body: Center(
            child: Column(
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(16.0),
                      padding: EdgeInsets.all(12.0),
                      color: Colors.white,
                      child: TextField(
                        //obscureText: true,
                        controller: kelimeController,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Kelime Ekle"
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    /*Expanded(
                        child: ListView.builder(
                          itemCount: _kelime.length,
                          itemBuilder: (context, index){
                            return ListTile(
                              title: Text(_kelime[index] as String),
                            );
                          },
                        )
                    ), */
                   /* Text(
                        "$secilenKelime"
                    ),*/
                    /*Container(
                      margin: EdgeInsets.all(16.0),
                      padding: EdgeInsets.all(12.0),
                      color: Colors.white,
                      child: ListView.builder(
                        itemCount: _kelime.length,
                        itemBuilder: (context, index){
                          return Container(
                            child: ListTile(
                              title: Row(
                                children: [
                                  Text('${_kelime[index].values}',
                                  style: TextStyle(fontSize: 24),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),*/
                  SizedBox(
                    height: 10,
                  ),
                  ],
                ),
                Row(

                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    /*SizedBox(
                      width: 10,
                    ),*/
                    Container(
                      padding: EdgeInsets.all(16.0),
                      alignment: Alignment.bottomLeft,
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
                    /*SizedBox(
                      height: 100,
                      width: 50,
                    ),*/
                    Container(
                      alignment: Alignment.bottomCenter,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Sil", style: TextStyle(color: Colors.black, fontSize: 15),),
                        style: ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(Colors.teal),
                          padding: MaterialStatePropertyAll(EdgeInsets.all(20.0)),
                        ),
                      ),
                    ),
                    /*SizedBox(
                      width: 60,
                    ),*/
                    Container(
                      alignment: Alignment.bottomRight,
                      child: ElevatedButton(
                        onPressed: () {
                          yeniKelime = kelimeController.text;
                          _kelime.add(yeniKelime as Map<String, dynamic>);
                          kelimeController.clear();

                        },
                        child:  Text("Kaydet",style: TextStyle(color: Colors.black, fontSize: 15),),
                        style: ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(Colors.teal),
                          padding: MaterialStatePropertyAll(EdgeInsets.all(20.0)),
                        ),
                      ),
                    ),

                  ],
                ),
              ],
            )
        ),
      ),
    );
  }
}

