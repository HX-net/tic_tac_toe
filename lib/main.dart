import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 11, 20, 68),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 2, 8, 49),
        title: Text("Tic Tac Toe", style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        children: [
          Column(
            children: [
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Player X", style: TextStyle(color: Colors.white)),
                  Text("Player Y", style: TextStyle(color: Colors.white)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("0", style: TextStyle(color: Colors.white)),
                  Text("0", style: TextStyle(color: Colors.white)),
                ],
              ),
            ],
          ),
          SizedBox(height: 100),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
            child: Table(
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              // columnWidths: const {0: FlexColumnWidth()},
              border: TableBorder(
                horizontalInside: BorderSide(color: Colors.white),
                verticalInside: BorderSide(color: Colors.white),
              ),
              children: [
                _buildSquareRow(3),
                _buildSquareRow(3),
                _buildSquareRow(3),
              ],
            ),
          ),
          SizedBox(height: 200),
          Container(
            width: 100,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(1000),
            ),
            child: TextButton(
              child: Text("Start Game", style: TextStyle(color: Colors.white)),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}

TableRow _buildSquareRow(int number) {
  return TableRow(
    children: [
      for (int num = 1; num <= number; num++)
        Container(
          height: 100,
          width: 50,
          alignment: Alignment.center,
          child: Text(("$num"), style: TextStyle(color: Colors.white)),
        ),
    ],
  );
}
