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
            backgroundImage: AssetImage("asset/download.jpg"),
            radius: 20,
          ),
          SizedBox(
            width: 15,
          ),
          Icon(Icons.menu),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Main Account',
                    style: TextStyle(
                        color: Colors.purple, fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.arrow_drop_down)
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Text(
                    '13.458',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ],
              ),
              // Icon(Icons.arrow_drop_down),
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
                    child: Icon(Icons.arrow_right_alt_outlined),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 50,
                      width: 198,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 220, 117, 238),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text(
                          'Split a Purchase',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
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
                height: 5,
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    ListTile(
                      leading: Image(
                        image: NetworkImage(
                            "https://th.bing.com/th/id/R.837eb7a397ecc9ceb73da231cc546cc2?rik=sQxMPbaRLvmYwA&riu=http%3a%2f%2f1.bp.blogspot.com%2f-Is8J6MnSJCk%2fURx19B6qNzI%2fAAAAAAAAARM%2fNUef8Qq63fs%2fs1600%2fnike-logo_00047965.jpg&ehk=Ec6%2f0oA%2bjXPwAg%2bHVzgZKGrJXH0VomNjgqnMfMV1TQk%3d&risl=&pid=ImgRaw&r=0"),
                        fit: BoxFit.cover,
                      ),
                      title: Text(
                        'NIKE SHOP',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text('17 Oct'),
                      trailing: Text(
                        '-62,94',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    SizedBox(
                      height: 05,
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage("asset/star.jpg"),
                        radius: 30,
                      ),
                      title: Text('STARBUCKS',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      subtitle: Text('17 Oct'),
                      trailing: Text('-62,94', style: TextStyle(fontSize: 15)),
                    ),
                    SizedBox(
                      height: 05,
                    ),
                    ListTile(
                      leading: Image(
                        image: NetworkImage(
                            "https://th.bing.com/th/id/OIP.7AqjyxLCbd4wg_ZKpfVoVgAAAA?w=330&h=330&rs=1&pid=ImgDetMain"),
                        fit: BoxFit.cover,
                      ),
                      title: Text('Anna Johnson',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      subtitle: Text('14 Oct'),
                      trailing: Text('50,00', style: TextStyle(fontSize: 15)),
                    ),
                    SizedBox(
                      height: 05,
                    ),
                    ListTile(
                      leading: Image(
                        image: NetworkImage(
                            "https://th.bing.com/th/id/OIP.wFhdr6F1Q7NMLRU4dIiZegHaG6?rs=1&pid=ImgDetMain"),
                        fit: BoxFit.contain,
                      ),
                      title: Text('From SAVINGS',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      subtitle: Text('3 Oct'),
                      trailing: Text('25,00', style: TextStyle(fontSize: 15)),
                    ),
                    ListTile(
                      leading: Text(
                        'Recent events',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                    ListTile(
                      leading: Image(
                        image: NetworkImage(
                            "https://th.bing.com/th/id/OIP.TGtaTPyYSGe2z653hnNkuAHaHP?rs=1&pid=ImgDetMain"),
                        fit: BoxFit.contain,
                      ),
                      title: Text("McDonald's",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      subtitle: Text('17 Oct'),
                      trailing: Text('-12,37', style: TextStyle(fontSize: 15)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.home),
                        SizedBox(
                          width: 30,
                        ),
                        Icon(Icons.message_outlined),
                        SizedBox(
                          width: 30,
                        ),
                        Icon(Icons.ring_volume),
                        SizedBox(
                          width: 30,
                        ),
                        Icon(Icons.pie_chart)
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
