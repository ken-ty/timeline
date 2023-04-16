import 'package:timeline/pages/v1.dart';
import 'package:timeline/pages/v2.dart';
import 'package:timeline/pages/v3.dart';
import 'package:timeline/pages/v4.dart';
import 'package:timeline/pages/v5.dart';

/// 表示するページ一覧
/// [lib/pages/] に追加したら この変数 にも追加してください.
final displayPages = [
  const V1(),
  const V2(),
  const V3(),
  const PinchDetector(child: V1()),
  const V5(),
];
