import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/registration.dart';
import 'package:flutter_application_1/pages/list.dart';

class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Авторизация'),
      ),
      body: Container(
        padding: const EdgeInsets.all(40),
        child: Center(
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: TextFormField(
                    decoration: InputDecoration(labelText: "Login or Email:"),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  width: 400.0,
                ),
              ),
              Expanded(
                flex: 2,
                child: Expanded(
                  flex: 1,
                  child: Container(
                    child: TextFormField(
                      decoration: InputDecoration(labelText: "Password:"),
                      obscureText: true,
                    ),
                    width: 400.0,
                    padding: new EdgeInsets.only(top: 10.0),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  height: 8,
                ),
              ),
              Expanded(
                flex: 1,
                child: ElevatedButton(
                  child: const Text('Войти'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ThirdRoute()),
                    );
                  },
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  height: 8,
                ),
              ),
              Expanded(
                flex: 1,
                child: ElevatedButton(
                  child: const Text('Регистрация'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SecondRoute()),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
