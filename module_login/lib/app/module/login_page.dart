import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_triple/flutter_triple.dart';

import 'login_store.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key? key, this.title = "Login"}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginStore> {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          key: formKey,
          child: ListView(
            shrinkWrap: true,
            children: [
              TextFormField(
                controller: email,
                validator: (value) {
                  if ((value ?? "").isEmpty) {
                    return "Need to use email";
                  }
                },
              ),
              const SizedBox(
                height: 5,
              ),
              TextFormField(
                controller: password,
                obscureText: true,
                validator: (value) {
                  if ((value ?? "").isEmpty) {
                    return "Need to use password";
                  }
                },
              ),
              const SizedBox(
                height: 45,
              ),
              ElevatedButton(
                onPressed: () async {
                  if (formKey.currentState?.validate() ?? false) {
                    await Future.delayed(const Duration(seconds: 1));
                    Modular.to.navigate('/home');
                  }
                },
                child: const Text('Enter'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
