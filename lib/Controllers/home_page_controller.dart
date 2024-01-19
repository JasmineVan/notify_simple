import 'package:get/get.dart';
import 'package:notify/Views/note_detail_page.dart';

import '../Models/note.dart';

class HomePageController extends GetxController{

  List<Note> noteList = [
    Note(noteTitle: "The First Note", noteContent: "I hope this note finds you well. I wanted to provide a quick update on our ongoing project. The team has been making excellent progress, and we are on track to meet our upcoming milestones. However, there have been a few challenges along the way, and I encourage everyone to continue collaborating and communicating effectively to overcome these hurdles.", latestEditTime: DateTime.now()),
    Note(noteTitle: "The Second Note", noteContent: "I wanted to take a moment to express my appreciation for each of you. Your dedication and hard work have not gone unnoticed, and I am truly grateful to have such a talented and committed team. Let's continue to support and inspire one another as we work towards our common goals.", latestEditTime: DateTime.now()),
    Note(noteTitle: "The Third Note", noteContent: "I hope this note finds you in good spirits. We have scheduled a training session for [date and time] to enhance our skills in [specific area]. This session is crucial for our professional development, and your active participation is encouraged. Please review the attached agenda and come prepared with any questions or topics you would like to discuss.", latestEditTime: DateTime.now()),
    Note(noteTitle: "The Fourth", noteContent: "I hope you're having a productive day. This note serves as a friendly reminder about [specific office policy]. It's important that we all adhere to these guidelines to maintain a positive and inclusive work environment. If you have any questions or concerns, please don't hesitate to reach out to [relevant contact].", latestEditTime: DateTime.now()),
    Note(noteTitle: "The Fifth Note", noteContent: "I hope this note finds you well. I wanted to provide a quick update on our ongoing project. The team has been making excellent progress, and we are on track to meet our upcoming milestones. However, there have been a few challenges along the way, and I encourage everyone to continue collaborating and communicating effectively to overcome these hurdles.", latestEditTime: DateTime.now()),
    Note(noteTitle: "The Sixth Note", noteContent: "I wanted to take a moment to express my appreciation for each of you. Your dedication and hard work have not gone unnoticed, and I am truly grateful to have such a talented and committed team. Let's continue to support and inspire one another as we work towards our common goals.", latestEditTime: DateTime.now()),
    Note(noteTitle: "The Seventh Note", noteContent: "I hope this note finds you in good spirits. We have scheduled a training session for [date and time] to enhance our skills in [specific area]. This session is crucial for our professional development, and your active participation is encouraged. Please review the attached agenda and come prepared with any questions or topics you would like to discuss.", latestEditTime: DateTime.now()),
    Note(noteTitle: "The Eighth", noteContent: "I hope you're having a productive day. This note serves as a friendly reminder about [specific office policy]. It's important that we all adhere to these guidelines to maintain a positive and inclusive work environment. If you have any questions or concerns, please don't hesitate to reach out to [relevant contact].", latestEditTime: DateTime.now()),
  ];

  void createNewNote(){
    Get.snackbar("Create New Note", "Hello from create new note");
  }

  void noteOnClick(noteIndex, bgColor){
    Get.to(NoteDetailPage(noteIndex: noteIndex, bgColor: bgColor,));
  }
}