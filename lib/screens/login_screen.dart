import 'package:flutter/material.dart';
import 'package:uts_2022130040/screens/home_screen.dart';

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
          const SizedBox(
            height: 10,
          ),
          Container(
            child: Padding(
              padding: EdgeInsets.only(right: 16),
              child: Text(
                'Welcome to Nekoshop',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 27),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
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
                    Padding(
                      padding: EdgeInsets.only(bottom: 5),
                      child: Text(
                        'email',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                              decoration: const InputDecoration(
                                labelText: 'your email',
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
                      height: 16,
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 5),
                      child: Text(
                        'password',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    TextFormField(
                        decoration: InputDecoration(
                          labelText: 'your password',
                          border: OutlineInputBorder(),

                          // suffix: IconButton(
                          //   icon: Icon(_obscured
                          //       ? Icons.visibility
                          //       : Icons.visibility_off),
                          //   onPressed: () {
                          //     setState(() {
                          //       _obscured = !_obscured;
                          //     });
                          //   },
                          // ),
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
                    GestureDetector(
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Homescreen(),
                            ),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('successfully Login!'),
                            ),
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text('not successfully Login')));
                        }
                      },
                      child: TextFormField(
                        enabled: false,
                        decoration: InputDecoration(
                          labelText: 'Login',
                          fillColor: Colors.blue,
                          filled: true,
                          labelStyle: TextStyle(color: Colors.white),
                        ),
                      ),
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
