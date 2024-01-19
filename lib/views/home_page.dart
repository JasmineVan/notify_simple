import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notify/Controllers/home_page_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final controller = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {

    double maxWidth = MediaQuery.sizeOf(context).width;
    double maxHeight = MediaQuery.sizeOf(context).height;

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => controller.createNewNote(),
        backgroundColor: const Color(0xffB06161),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40.0)
        ),
        child: const Icon(Icons.add, color: Colors.white, size: 32.0,),
      ),
      appBar: AppBar(
        title: const Text("Notify", style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 24.0,
        )),
        backgroundColor: const Color(0xffB06161),
      ),
      body: ListView.builder(
        itemCount: controller.noteList.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () => controller.noteOnClick(index, (index%2 == 0) ? 0xffDC8686 :  0xffF0DBAF),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: maxWidth/40, vertical: maxHeight/80),
                width: maxWidth*9/10,
                height: maxHeight*1/6,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: (index%2 == 0) ? const Color(0xffDC8686).withOpacity(0.5) : const Color(0xffF0DBAF).withOpacity(0.5),
                ),
                child: Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: maxHeight/80, left: maxWidth/40),
                      child: Align(
                        alignment: Alignment.topLeft,
                          child: Text(controller.noteList[index].noteTitle.toString(), style: const TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          )),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: maxHeight/160, right: maxWidth/20),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Text("Last edit: ${controller.noteList[index].latestEditTime.toString().substring(0, 20)}", style: const TextStyle(
                          color: Colors.black87,
                          fontStyle: FontStyle.italic,
                          fontSize: 16.0,
                        )),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
    );
  }
}
