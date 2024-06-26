import 'package:flutter/cupertino.dart';
import 'package:task_manager/models/note.dart';

class NotesOperation with ChangeNotifier {
  //List of Note
  List<Note> _notes = [];

  List<Note> get getNotes {
    return _notes;
  }


  NotesOperation() {
    addNewNote('First Note', 'First Note Description');
  }


  void addNewNote(String title, String description) {
    //Note Object
    Note note = Note(title, description);
    _notes.add(note);
    notifyListeners();
  }
}