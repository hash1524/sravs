import 'package:flutter/material.dart';
import 'package:sravs/Widgets/glass_morphism_widget.dart';
import 'package:sravs/Widgets/list_tile_widget.dart';

class ListWidget extends StatefulWidget {
  const ListWidget({super.key});

  @override
  State<ListWidget> createState() => _ListWidgetState();
}

class _ListWidgetState extends State<ListWidget> {
  List tasks = [
    ['tasks1', true],
    ['tasks2', false],
    ['tasks3', false],
    ['tasks4', false],
    ['tasks5', true],
    ['tasks6', false],
    ['tasks7', true],
    ['tasks8', false],
    ['tasks9', false],
    ['tasks10', true],
  ];

  void checkBoxChanged(bool? value, int index) {
    setState(() {
      tasks[index][1] = !tasks[index][1];
    });
  }


  void addTask() {
    setState(() {
      tasks.add([_controller.text, false]);
      _controller.clear();
    });
  }

  final _controller = TextEditingController();

  void deleteTask(int index){
    setState(() {
      tasks.removeAt(index);
    });
  }

  void editTask(int index){
    setState(() {
      tasks[index][0] = _controller.text;
      _controller.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
            child: Column(
              spacing: 15,
              children: [
                GlassContainer(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.height * 0.4,
                  child: ListView.builder(
                    itemCount: tasks.length,
                    itemBuilder: (context, index) {
                      return ListTileWidget(
                        taskName: tasks[index][0],
                        taskCompleted: tasks[index][1],
                        onChanged: (value) => checkBoxChanged(value, index),
                        deleteTask: (context)=>deleteTask(index),
                        editTask: (context)=>editTask(index),
                      );
                    },
                  ),
                ),
                Row(
                  children: [
                    SizedBox(
                      child: GlassContainer(
                        width: MediaQuery.of(context).size.width * 0.3,
                        height: MediaQuery.of(context).size.height * 0.05,
                        child: TextField(
                          controller: _controller,
                          style: TextStyle(color: Colors.white, fontSize: 20),
                          decoration: InputDecoration(
                            hoverColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            labelText: 'Add Task',
                            labelStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                    FloatingActionButton(
                      onPressed: addTask,
                      backgroundColor: Colors.white.withOpacity(0.6),
                      child: Icon(Icons.add),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
