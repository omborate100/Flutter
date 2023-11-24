import 'package:flutter/material.dart';

class ListGrid extends StatefulWidget {
  const ListGrid({super.key});

  @override
  State<ListGrid> createState() => _ListGridState();
}

List<String> Stock = ['Reliance', 'Adani port', 'TCS', 'HCL Technology','Bharti Airtel','tanla','bcg','indian infotech','shreeram epc','mrf','HUL','Zomato','Wipro'];

class _ListGridState extends State<ListGrid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List and Grid'),
        backgroundColor: Colors.purple,
        elevation: 8,
      ),
      body: Container(
        child: ListView.builder(
          itemCount: Stock.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text(Stock[index]),
              ),
            );
          },
        ),
      ),
    );
    ;
  }
}
