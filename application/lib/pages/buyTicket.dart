import 'package:flutter/material.dart';

class Buyticket extends StatefulWidget {
  const Buyticket({Key? key}) : super(key: key);

  @override
  _BuyticketState createState() => _BuyticketState();
}

class _BuyticketState extends State<Buyticket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[800],
        title: Text("GREENBUS", style: TextStyle(fontFamily: 'BRITANIC')),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(8.0),
          children: [
            ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                side: BorderSide(
                  color: Colors.green.shade900,
                ),
              ),
              title: Text('ซื้อตั๋วโดยสาร',
                  style: TextStyle(
                    color: Colors.green[900],
                  )),
              leading: Icon(
                Icons.stop,
                color: Colors.green[900],
              ),
              trailing: Icon(
                Icons.airport_shuttle,
                color: Colors.green[900],
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                side: BorderSide(
                  color: Colors.green.shade900,
                ),
              ),
              title: Text('ข้อมูลการเดินทาง',
                  style: TextStyle(
                    color: Colors.green[900],
                  )),
              leading: Icon(
                Icons.stop,
                color: Colors.green[900],
              ),
              trailing: Icon(
                Icons.shopping_bag,
                color: Colors.green[900],
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                side: BorderSide(
                  color: Colors.green.shade900,
                ),
              ),
              title: Text('ข้อเสนอพิเศษ',
                  style: TextStyle(
                    color: Colors.green[900],
                  )),
              leading: Icon(
                Icons.stop,
                color: Colors.green[900],
              ),
              trailing: Icon(
                Icons.sticky_note_2,
                color: Colors.green[900],
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                side: BorderSide(
                  color: Colors.green.shade900,
                ),
              ),
              title: Text('ข้อมูลส่วนตัว',
                  style: TextStyle(
                    color: Colors.green[900],
                  )),
              leading: Icon(
                Icons.stop,
                color: Colors.green[900],
              ),
              trailing: Icon(
                Icons.document_scanner,
                color: Colors.green[900],
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                side: BorderSide(
                  color: Colors.green.shade900,
                ),
              ),
              title: Text('พิมพ์ตั๋วโดยสาร',
                  style: TextStyle(
                    color: Colors.green[900],
                  )),
              leading: Icon(
                Icons.stop,
                color: Colors.green[900],
              ),
              trailing: Icon(
                Icons.local_printshop,
                color: Colors.green[900],
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
