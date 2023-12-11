import 'package:flutter/material.dart';
import 'package:hisab/provider/noteProvider.dart';
import 'package:provider/provider.dart';
import '../widgets/notesDetails.dart';
class Note extends StatelessWidget {
  const Note({super.key});

  @override
  Widget build(BuildContext context) {
    final notesProvider = Provider.of<NotesProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Notes'),
      ),
      body: ListView.builder(
        itemCount: notesProvider.notes.length,
        itemBuilder: (context, index) {
          final note = notesProvider.notes[index];
          return ListTile(
            title: Text(note.title ?? 'Untitled'),
            subtitle: Text(note.date),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NoteDetailScreen(note: note),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => NoteDetailScreen(),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}