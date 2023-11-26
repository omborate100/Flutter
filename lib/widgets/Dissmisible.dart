import 'package:flutter/material.dart';

class DismisibleWidget extends StatefulWidget {
  const DismisibleWidget({super.key});

  @override
  State<DismisibleWidget> createState() => _DismisibleWidgetState();
}

List<String> stocks = ['Reliance', 'Adani port', 'TCS', 'HCL Technology','Bharti Airtel','tanla','bcg','indian infotech','shreeram epc','mrf','HUL','Zomato','Wipro'];


class _DismisibleWidgetState extends State<DismisibleWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dismisible package'),
        backgroundColor: Colors.purple,
      ),
      body: ListView.builder(
        itemCount: stocks.length,
        itemBuilder: (context, index) {
          final stock = stocks[index];
          return Dismissible(
              onDismissed: (direction) {
                if (direction == DismissDirection.startToEnd) {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text(stocks[index])));
                } else {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text(stocks[index])));
                  print('end to start');
                }
              },
              key: Key(stock),
              child: Card(
                color: Colors.amberAccent,
                child: ListTile(
                  title: Text(stocks[index]),
                ),
              ));
        },
      ),
    );
  }
}
