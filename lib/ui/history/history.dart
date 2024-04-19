import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:insta_message/logic/structure/models.dart';

class HistoryView extends StatelessWidget {
  const HistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: Hive.box('history').listenable(),
      builder: (context, value, child) {
        final historyList = Hive.box('history').values.toList();
        return ListView.builder(
          itemCount: historyList.length,
          itemBuilder: (context, index) {
            final Usage usage = historyList[index];
            return ListTile(
              title: Text(
                usage.query,
                textDirection: TextDirection.ltr,
              ),
              subtitle: Text(
                usage.createdAt.toString(),
                textDirection: TextDirection.ltr,
              ),
              trailing: Text(
                usage.social,
              ),
              leading: IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () {
                  Hive.box('history').deleteAt(index);
                },
              ),
            );
          },
        );
      },
    );
  }
}
