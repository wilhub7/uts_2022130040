import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  bool _obscured = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.grey,
              child: Center(
                child: Icon(
                  Icons.image,
                  size: 50,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              'Welcome to Nekoshop',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Form(
                key: _formKey,
                child: ListView(
                  padding: const EdgeInsets.all(16),
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                              decoration: const InputDecoration(
                                labelText: 'Email',
                                border: OutlineInputBorder(),
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'tolong isi emailnya';
                                }
                                return null;
                              }),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Password',
                          border: const OutlineInputBorder(),
                          suffix: IconButton(
                            icon: Icon(_obscured
                                ? Icons.visibility
                                : Icons.visibility_off),
                            onPressed: () {
                              setState(() {
                                _obscured = !_obscured;
                              });
                            },
                          ),
                        ),
                        obscureText: true,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'tolong isi passwordnya';
                          }
                          return null;
                        }),
                    const SizedBox(
                      height: 16,
                    ),
                    TextButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('successfully log in!'),
                            ),
                          );
                        }
                      },
                      child: const Text('log in'),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );

    // Scaffold(
    //   appBar: AppBar(
    //     title: Text(''),
    //     actions: [
    //       Icon(
    //         Icons.image,
    //         size: 50,
    //       ),
    //     ],
    //   ),
    // );
  }
}
