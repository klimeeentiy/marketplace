import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/card.dart';

class ItemList extends StatelessWidget {
  const ItemList(
      {super.key,
      required this.images,
      required this.name,
      required this.index_numbs,
      required this.cost});

  final String images;
  final String name;
  final int index_numbs;
  final String cost;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: ElevatedButton(
        style: ButtonStyle(
          textStyle: MaterialStateProperty.all(
            const TextStyle(fontSize: 25),
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Cardpr(numb: index_numbs)),
          );
        },
        child: Expanded(
          flex: 1,
          child: Container(
            child: Expanded(
              flex: 1,
              child: Expanded(
                flex: 1,
                child: Column(
                  children: <Widget>[
                    Image.network('${images}'),
                    Text('${name}'),
                    Text('${cost} руб.')
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
