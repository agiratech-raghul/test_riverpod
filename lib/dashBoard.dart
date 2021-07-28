import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_riverpod/secondPage.dart';

final textprovider = ChangeNotifierProvider<Notifier>((ref) {
  return Notifier();
});

class TextShownList extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final noteswatcher = watch(textprovider);
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, int index) {
          print(noteswatcher.Notes[index]);
          return Text(noteswatcher.Notes[index]);
        },
        itemCount: noteswatcher.Notes.length,
      ),
    );
  }
}

class DashBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final notes = TextEditingController();
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            TextField(
              controller: notes,
            ),
            TextButton(
                child: Text('Submit'),
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondPage(key:context.read(textprovider).onsubmit(notes.text))));
                }
            ),
            TextShownList(),
          ],
        ),
      ),
    );
  }
}


class Notifier extends ChangeNotifier{
  List Notes = [];
  onsubmit(String a){
    Notes.add(a);
    notifyListeners();
  }
}