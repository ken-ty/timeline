import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    List<int> eraList = [];
    for (int i = 0; i < 1000; i++) {
      eraList.add(i);
    }
    var eras = eraList.map((e) => ListTile(title: Text(e.toString())));
    return Row(
      children: [
        SizedBox(
          width: 50,
          child: Container(
            color: Colors.blue,
            child: ListView(
              children: [...eras],
            ),
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.red,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Card(
                color: Colors.amber,
                child: Center(
                    child: Column(
                  children: [
                    const Text(
                      "一旦メモリだけスクロール"
                      "できるようにした",
                    ),
                    ElevatedButton(
                      onPressed: () => {},
                      child: const Text("ボタン1"),
                    ),
                    ElevatedButton(
                      onPressed: () => {},
                      child: const Text("ボタン1"),
                    )
                  ],
                )),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
