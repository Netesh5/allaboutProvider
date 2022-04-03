import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/provider/provider_code.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final _formkey = GlobalKey<FormState>();
  TextEditingController _textController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: const Text("Provider"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: ChangeNotifierProvider<validate>(
              create: (context) => validate(),
              child: Consumer<validate>(
                builder: (context, validate, child) => Form(
                  key: _formkey,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        onChanged: (value) {
                          validate.validataion(value);
                        },
                        decoration: InputDecoration(
                            hintText: "Enter email",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8))),
                      ),
                      Text(
                        validate.validatemsg,
                        style: TextStyle(
                            color:
                                validate.isvalid ? Colors.green : Colors.red),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                          decoration: InputDecoration(
                              hintText: "Enter password",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8)))),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
