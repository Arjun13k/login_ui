import 'package:flutter/material.dart';

class HomeUi2 extends StatelessWidget {
  const HomeUi2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        actions: [
          CircleAvatar(
            radius: 20,
          ),
          SizedBox(
            width: 15,
          ),
          Icon(Icons.menu)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Main Account',
                  style: TextStyle(color: Colors.purple),
                ),
                Icon(Icons.arrow_drop_down)
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Text(
                  '13.458',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ],
            ),
            Icon(Icons.arrow_drop_down),
            Text('Current balance'),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                FloatingActionButton(
                  backgroundColor: Colors.purple,
                  onPressed: () {},
                  child: Icon(Icons.add),
                ),
                SizedBox(
                  width: 20,
                ),
                FloatingActionButton(
                  backgroundColor: Colors.purple,
                  onPressed: () {},
                  child: Icon(Icons.arrow_right),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 50,
                  width: 180,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 220, 117, 238),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      'Split a Purchase',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Recent events',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
