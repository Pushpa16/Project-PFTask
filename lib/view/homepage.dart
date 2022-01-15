import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController taskcontroller = TextEditingController();

  var tasks = ["task1" "task2"];

  void addTask(task) {
    tasks.add(task);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "PF_TASK",
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w900,
          ),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          ListView.builder(
            itemCount: tasks.length,
            itemBuilder: (context, index) {
              return Text(tasks[index]);
            },
          ),
          Positioned(
            bottom: 0,
            child: Container(
              color: Colors.pink.shade700,
              height: 80,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width * 0.80,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 2.0),
                          borderRadius: BorderRadius.circular(10)),
                      child: TextFormField(
                        controller: taskcontroller,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "eg: Add Anything",
                            hintStyle: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold,
                            ),
                            contentPadding: EdgeInsets.all(8.0)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: InkWell(
                        onTap: () {
                          print("Clicked");
                          if (taskcontroller.text.isNotEmpty) {
                            addTask(taskcontroller.text);
                            taskcontroller.text = "";
                          }
                        },
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.white,
                          ),
                          child: Icon(
                            Icons.send,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
