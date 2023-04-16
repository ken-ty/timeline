/// ChatGPT で生成したコード を 調整したやつ
///
/// Q1. あなたは独創的なflutterエンジニアです。画面の左端に定規のような目盛りのあるwidgetのコードを書いてください。
/// A1. 省略
///
/// Q2. 先のコードにおいて、間違いやより良くできる箇所がないかを検討した結果を再度書いてください。
/// A2. 省略
///
/// Q3. 改めてコードを書いてください。
/// A3.
/// 以下は、先の改善点を反映した、左端に定規のような目盛りのある
/// Flutterウィジェットのコード例です。
///
/// ```
/// import 'package:flutter/material.dart';
///
/// class V3 extends StatelessWidget {
///   final int divisions;
///   final double height;
///   final double width;
///   final Color color;
///   final double borderWidth;
///
///   const V3({
///     required this.divisions,
///     required this.height,
///     required this.width,
///     required this.color,
///     this.borderWidth = 1.0,
///   });
///
///   @override
///   Widget build(BuildContext context) {
///     return Container(
///       height: height,
///       width: width,
///       decoration: BoxDecoration(
///         border: Border(
///           left: BorderSide(
///             color: color,
///             width: borderWidth,
///           ),
///         ),
///       ),
///       child: ListView.builder(
///         itemCount: divisions,
///         itemBuilder: (context, index) {
///           return Container(
///             decoration: BoxDecoration(
///               border: Border(
///                 bottom: BorderSide(
///                   color: color,
///                   width: borderWidth,
///                 ),
///               ),
///             ),
///             child: Center(
///               child: Text(
///                 '${index + 1}',
///                 style: TextStyle(
///                   color: color,
///                   fontSize: 12.0,
///                 ),
///               ),
///             ),
///           );
///         },
///       ),
///     );
///   }
/// }
/// ```
///
/// このウィジェットは、与えられた divisions 数に基づいて、指定された高さと幅で定規の
/// ような目盛りを表示します。左端には指定された色の線が表示されます。
/// また、目盛りには文字が表示されます。境界線の幅は、 borderWidth 引数で指定できます。
/// borderWidth 引数を指定しなかった場合、デフォルトで1.0が使用されます。

import 'package:flutter/material.dart';

class V3 extends StatelessWidget {
  final int divisions;
  final double height;
  final double width;
  final Color color;
  final double borderWidth;

  const V3({
    super.key,
    this.divisions = 10000,
    this.height = 1000,
    this.width = 100,
    this.color = Colors.pink,
    this.borderWidth = 1.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        border: Border(
          left: BorderSide(
            color: color,
            width: borderWidth,
          ),
        ),
      ),
      child: ListView.builder(
        itemCount: divisions,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: color,
                  width: borderWidth,
                ),
              ),
            ),
            child: Center(
              child: Text(
                '${index + 1}',
                style: TextStyle(
                  color: color,
                  fontSize: 12.0,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
