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
      backgroundColor: Colors.brown,
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.grey,
              child: Center(
                child: Image.asset('assets/toko.jpeg'),
                // child: Icon(
                //   Icons.image,
                //   size: 50,
                // ),
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
                'Welcome to Wilshop',
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
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(width: 3)),
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
                          border: OutlineInputBorder(
                              borderSide: BorderSide(width: 3)),
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
                        textAlign: TextAlign.center,
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
  }
}
