import 'package:flutter/material.dart';
import 'package:timeline/widgets/era.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double currentSliderValue = 0.0;

  @override
  Widget build(BuildContext context) {
    // 年表データ(仮)
    // TODO: めちゃくちゃ多いと out of memory で落ちるので描画してるところだけ読みこむなどの工夫が必要
    List<String> eraList = [];
    for (int i = -2000; i <= 2000; i += 100) {
      eraList.add("西暦$i年");
    }
    // 年表widgetを格納する
    List<Widget> timeline = [];
    // 年表widget作成用に壊しても良いデータを作成する
    var eraList2 = [...eraList];
    // 先頭は padding つけずに格納
    timeline.add(Era(title: eraList[0], paddingTop: 0.0));
    // 1番最初の sizedBox を削除
    eraList2.removeAt(0);
    // 全部にpaddingつけて入れていく
    for (String era in eraList2) {
      timeline.add(Era(
        title: era.toString(),
        paddingTop: currentSliderValue,
      ));
    }

    return Row(
      children: [
        SizedBox(
          width: 100,
          child: Container(
            color: Colors.blue,
            child: ListView(
              children: [
                const SizedBox(height: 20),
                ...timeline,
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.red,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: Colors.amber,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                            onPressed: () => {
                              setState(() {
                                currentSliderValue = 0.0;
                              })
                            },
                            child: const Text("最小化"),
                          ),
                          ElevatedButton(
                            onPressed: () => {
                              setState(() {
                                currentSliderValue = 100.0;
                              })
                            },
                            child: const Text("最大化"),
                          ),
                        ],
                      ),
                      Slider(
                        value: currentSliderValue,
                        max: 100,
                        label: currentSliderValue.round().toString(),
                        onChanged: (double value) {
                          setState(() {
                            currentSliderValue = value;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
