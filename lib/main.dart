import 'package:flutter/material.dart';

class Todo {
  final String title;
  final String decription;

  Todo(this.title, this.decription);
}

void main() {
  runApp(MaterialApp(
      title: 'Pasing Data',
      home: Todoscreen(
        todos: List.generate(
          20,
          (i) => Todo(
            'To do $i',
            'A description of what needs to be done for Todo $i',
          ),
        ),
      )));
}

//tạo màn hình todo để hiển thị danh sách
class Todoscreen extends StatelessWidget {
  final List<Todo> todos;
  const Todoscreen({Key key, this.todos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Todos'),
        ),
        body: ListView.builder(
          itemCount: todos.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(todos[index].title),
              // onTap: () {
              //   Navigator.push(context,
              //       MaterialPageRoute(builder: (context) => DetailScreen()));
              // },
            );
          },
        ));
  }
}

// class DetailScreen extends StatelessWidget {
//   final Todo todo;

//   const DetailScreen({Key key, this.todo}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(todo.title),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16),
//         child: Text(todo.decription),
//       ),
//     );
//   }
// }
