import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/list.dart';

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Регистрация'),
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
                    decoration: const InputDecoration(labelText: "Name:"),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  width: 400.0,
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  child: TextFormField(
                    decoration: const InputDecoration(labelText: "Lastname:"),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  width: 400.0,
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  child: TextFormField(
                    decoration: const InputDecoration(labelText: "Login:"),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  width: 400.0,
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  child: TextFormField(
                    decoration: const InputDecoration(labelText: "Email:"),
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
                      decoration: const InputDecoration(labelText: "Password:"),
                      obscureText: true,
                    ),
                    width: 400.0,
                    padding: const EdgeInsets.only(top: 10.0),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Expanded(
                  flex: 1,
                  child: Container(
                    child: TextFormField(
                      decoration: const InputDecoration(
                          labelText: "Confirm the password:"),
                      obscureText: true,
                    ),
                    width: 400.0,
                    padding: const EdgeInsets.only(top: 10.0),
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
                  child: const Text('Зарегистрироваться'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ThirdRoute()),
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
