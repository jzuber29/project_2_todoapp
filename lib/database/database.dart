import 'package:hive_flutter/hive_flutter.dart';

class TodoDatabase{
  List TodoList = [
  ];

  final _myBox =Hive.box('mybox');

  void createData(){
    TodoList = [
    ["TODO", false],
   
  ];

  }
  void loadData(){
    TodoList=_myBox.get("TODOLIST");
  }

  void updateDatabase(){
    _myBox.put("TODOLIST", TodoList);
  }
}
