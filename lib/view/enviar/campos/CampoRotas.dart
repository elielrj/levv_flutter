import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CampoRotas extends StatefulWidget {
  const CampoRotas({Key? key}) : super(key: key);

  @override
  State<CampoRotas> createState() => _CampoRotasState();
}

class _CampoRotasState extends State<CampoRotas> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 8,bottom: 8),
        child: Column(
          children: [
            Text("ROTAS"),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: TextField(
                    decoration: InputDecoration(
                        labelStyle: TextStyle(backgroundColor: Colors.white),
                        labelText: "Endereço de coleta",
                        prefixIcon: Icon(Icons.email_outlined),
                        fillColor: Colors.white,
                        filled: true),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: TextField(
                    decoration: InputDecoration(
                        labelStyle: TextStyle(backgroundColor: Colors.white),
                        labelText: "Endereço de entrega",
                        prefixIcon: Icon(Icons.email_outlined),
                        fillColor: Colors.white,
                        filled: true),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
