import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.push("/addCategory");
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 234, 109, 150),
        centerTitle: true,
        title: Text("Mama's Kitchen"),
      ),
      body: Column(
        children: [
          // ListView.builder(
          //  itemCount:
          //  itemBuilder: (BuildContext context, int index))
        ],
      ),
    );
  }
}
