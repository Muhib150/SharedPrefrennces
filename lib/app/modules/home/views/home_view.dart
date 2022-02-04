import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sharedpreference/app/modules/notes/views/notes_view.dart';

import '../controllers/home_controller.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeView extends GetView<HomeController> {
  final notescontroller = TextEditingController();
  Future<void> setNotesData(noteValue) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('noteData', noteValue);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Shared preferences'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                controller: notescontroller,
                decoration: InputDecoration(hintText: 'Enter Notes'),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    setNotesData(notescontroller.text);
                  },
                  child: Text('Save')),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    Get.to(NotesView());
                  },
                  child: Text('View Notes'))
            ],
          ),
        ));
  }
}
