import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/list.dart';

class Cardpr extends StatelessWidget {
  const Cardpr({super.key, required this.numb});

  final int numb;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(name_product[numb]),
        ),
        body: Expanded(
          flex: 1,
          child: Container(
            padding: const EdgeInsets.all(8),
            child: Center(
              child: Column(children: <Widget>[
                Expanded(
                    flex: 3, child: Image.network('${images_product[numb]}')),
                Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.center,
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 200),
                      child: Row(
                        children: <Widget>[
                          const Text(
                            'Цена: ',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '${cost[numb]}',
                            style: const TextStyle(
                                color: Colors.green,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Expanded(
                    flex: 1,
                    child: ListView(children: <Widget>[
                      Text(
                        '${info[numb]}',
                        softWrap: true,
                      ),
                    ]),
                  ),
                ),
              ]),
            ),
          ),
        ));
  }
}
