import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notify/Controllers/note_detail_page_controller.dart';

class NoteDetailPage extends StatefulWidget {

  final int noteIndex;
  final int bgColor;

  const NoteDetailPage({super.key, required this.noteIndex, required this.bgColor});
  
  @override
  State<NoteDetailPage> createState() => _NoteDetailPageState();
}

class _NoteDetailPageState extends State<NoteDetailPage> {

  final controller = Get.put(NoteDetailPageController());

  @override
  Widget build(BuildContext context) {

    double maxWidth = MediaQuery.sizeOf(context).width;
    double maxHeight = MediaQuery.sizeOf(context).height;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Notify", style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 24.0,
        )),
        backgroundColor: const Color(0xffB06161),
      ),
      body: Container(
        color: Color(widget.bgColor).withOpacity(0.5),
        child: Column(
          children: [
            TextFormField(
              initialValue: controller.noteList[widget.noteIndex].noteTitle.toUpperCase(),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: maxWidth/40)
              ),
              textInputAction: TextInputAction.next,
              style: const TextStyle(
                color: Colors.black87,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              child: TextFormField(
                initialValue: controller.noteList[widget.noteIndex].noteContent.toString(),
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: maxWidth/40)
                ),
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.multiline,
                minLines: 100,
                maxLines: null,
                style: const TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
