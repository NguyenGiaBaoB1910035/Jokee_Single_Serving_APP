import 'package:flutter/material.dart';
import 'contents_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Image.asset(
            "assets/images/logo.png",
          ),
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Text("Handicrafted by",
                        style: TextStyle(color: Colors.grey, fontSize: 10)),
                    Text("Jim HLS",
                        style: TextStyle(color: Colors.black, fontSize: 12)),
                  ],
                ),
              ),
              const CircleAvatar(
                  backgroundImage: AssetImage("assets/images/avarta.jpg")),
            ],
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            color: const Color.fromARGB(207, 32, 155, 37),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Column(children: const [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: Text(
                    "A joke a day keeps the doctor away",
                    style: TextStyle(fontSize: 19, color: Colors.white),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    "If you joke wrong way, your teeth have to pay. (Serious)",
                    style: TextStyle(fontSize: 13, color: Colors.white),
                  ),
                ),
              ]),
            ),
          ),
          //Content

          const Expanded(child: ContentsWidget()),

          //foodter
          const Divider(
            color: Colors.grey,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: const [
                Text(
                  "This appis created as part of Hlsolutions program. The marterial cons-tained on this website are provided for general information only and do not constitule any form of advice. HLS assumes no responsibility for the accurcy of any particular statement and accepts no liability for any loss or damage which may arise from reliance on the infro-mation contained on this site.",
                  style: TextStyle(color: Colors.black45, fontSize: 12),
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    "Copyright 2021 HLS",
                    style: TextStyle(color: Colors.black54, fontSize: 13),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
