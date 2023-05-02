import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'To-Do List',
      home: LoginDemo(),
      // home: ToDoList(),
    );
  }
}

class LoginDemo extends StatefulWidget {
  @override
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State<LoginDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Center(
                child: Container(
                    width: 200,
                    height: 150,
                    /*decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/
                    child: Image.asset('asset/images/flutter-logo.png')),
              ),
            ),
            Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    hintText: 'Enter valid email id as abc@gmail.com'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter secure password'),
              ),
            ),
            MaterialButton(
              onPressed: () {
                //TODO FORGOT PASSWORD SCREEN GOES HERE
              },
              child: Text(
                'Forgot Password',
                style: TextStyle(color: Colors.blue, fontSize: 15),
              ),
            ),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child: ElevatedButton(
                onPressed: () {
                  // Navigator.push(
                  //     context, MaterialPageRoute(builder: (_) => HomePage()));
                },
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            SizedBox(
              height: 130,
            ),
            Text('New User? Create Account')
          ],
        ),
      ),
    );
  }
}


// class ToDoList extends StatefulWidget {
//   const ToDoList({super.key});

//   @override
//   // ignore: library_private_types_in_public_api
//   _ToDoListState createState() => _ToDoListState();
// }

// class _ToDoListState extends State<ToDoList> {
//   final List<String> _tasks = [];

//   void _addTask(String task) {
//     setState(() {
//       _tasks.add(task);
//     });
//   }

//   Widget _buildTask(String task) {
//     return ListTile(
//       title: Text(task),
//       trailing: IconButton(
//         icon: const Icon(Icons.done),
//         onPressed: () {
//           setState(() {
//             _tasks.remove(task);
//           });
//         },
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('To-Do List'),
//       ),
//       body: Column(
//         children: <Widget>[
//           Expanded(
//             child: ListView(
//               children: _tasks.map((task) => _buildTask(task)).toList(),
//             ),
//           ),
//           AddTaskForm(_addTask),
//         ],
//       ),
//     );
//   }
// }

// class AddTaskForm extends StatefulWidget {
//   final Function addTask;

//   const AddTaskForm(this.addTask, {super.key});

//   @override
//   // ignore: library_private_types_in_public_api
//   _AddTaskFormState createState() => _AddTaskFormState();
// }

// class _AddTaskFormState extends State<AddTaskForm> {
//   final _formKey = GlobalKey<FormState>();
//   String _task = '';

//   void _submit() {
//     if (_formKey.currentState!.validate()) {
//       _formKey.currentState!.save();
//       widget.addTask(_task);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(16.0),
//       child: Form(
//         key: _formKey,
//         child: TextFormField(
//           validator: (value) {
//             if (value!.isEmpty) {
//               return 'Please enter a task';
//             }
//             return null;
//           },
//           onSaved: (newValue) => _task = newValue!,
//           decoration: InputDecoration(
//             labelText: 'Task',
//             hintText: 'What do you need to do?',
//             suffixIcon: IconButton(
//               icon: const Icon(Icons.add),
//               onPressed: _submit,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
