import 'package:flutter/material.dart';

class CalculatePage extends StatefulWidget {
  const CalculatePage({ Key? key }) : super(key: key);

  @override
  _CalculatePageState createState() => _CalculatePageState();
}

class _CalculatePageState extends State<CalculatePage> {

  TextEditingController quantity = TextEditingController();
  TextEditingController price = TextEditingController(); // double price = 100;
  TextEditingController result = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    result.text =
        ("Buy apple x Kg., we have to pay x THB, Cause apple x per kg.");
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: [
              // Text("Picture" , style: TextStyle(fontFamily: "DSN" ,fontWeight: FontWeight.bold, fontStyle: FontStyle.italic ,color: Colors.red  , fontSize: 50)),
              Image.asset("assets/red-apple-basket.jpg"),
              SizedBox(
                height: 20,
              ),
              Text("Calculate Program",
                  style: TextStyle(
                      fontFamily: "DSN",
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      color: Colors.red,
                      fontSize: 50)),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: quantity,
                decoration: InputDecoration(
                    labelText: "Apple Amount", border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: price,
                decoration: InputDecoration(
                    labelText: "Apple Price", border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  var cal =
                      double.parse(quantity.text) * double.parse(price.text);
                  print("Apple quantity: ${quantity.text} Total: ${cal} THB");
                  setState(() {
                    result.text =
                        "Buy apple ${quantity.text} Kg., we have to pay ${cal} THB, Cause apple ${price.text} per kg.";
                  });
                },
                child: Text("Calculate"),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xffF6A294)),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.fromLTRB(10, 10, 10, 10)),
                  textStyle: MaterialStateProperty.all(TextStyle(
                      fontFamily: "DSN", fontSize: 20, color: Colors.white)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(result.text)
            ]),
          ),
        ),
      ],
    );
  }
}