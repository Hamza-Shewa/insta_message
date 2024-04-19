import 'package:hive/hive.dart';
part 'usage.g.dart';

@HiveType(typeId: 0)
class Usage extends HiveObject {
  Usage({
    required this.url,
    required this.social,
    required this.query,
    required this.createdAt,
  });

  @HiveField(0)
  final String url;
  @HiveField(1)
  final String social;
  @HiveField(2)
  final String query;
  @HiveField(3)
  final DateTime createdAt;
}
