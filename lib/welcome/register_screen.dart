import 'package:alokerin/container/main_container.dart';
import 'package:alokerin/welcome/login_screen.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  _RegisterScreenState createState() => new _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen>  {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding:
                  const EdgeInsets.only(top: 26.0, bottom: 6.0, left: 26.0, right: 26.0),
                  child: Image(
                    image: AssetImage(
                        'assets/images/concert_images/ic_register.png'), ),
                ),
                Padding(
                  padding:
                  const EdgeInsets.only(top: 3.0, bottom: 5.0, right: 220.0),
                  child: Text("Daftar",
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.bold,
                      fontSize: 45.0,
                    ),),
                ),
                Padding(
                  padding:
                  const EdgeInsets.only(top: 10.0, right: 25.0, left: 25.0),
                  child: TextFormField(
                    decoration: new InputDecoration(
                      hintText: "Masukkan Username Anda",
                      labelText: "Username",
                      icon: Icon(Icons.person_outline),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'username tidak boleh kosong';
                      }
                      return null;
                    },
                  ),
                ),

                Padding(
                  padding:
                  const EdgeInsets.only(top: 5.0, right: 25.0, left: 25.0),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: new InputDecoration(
                      hintText: "Masukkan Email Anda",
                      labelText: "Email",
                      icon: Icon(Icons.alternate_email),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'email tidak boleh kosong';
                      }
                      return null;
                    },
                  ),
                ),

                Padding(
                  padding:
                  const EdgeInsets.only(top: 5.0, bottom: 50.0, right: 25.0, left: 25.0),
                  child: TextFormField(
                    obscureText: true,
                    decoration: new InputDecoration(
                      labelText: "Password",
                      icon: Icon(Icons.lock_open_outlined),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'password tidak boleh kosong';
                      }
                      return null;
                    },
                  ),
                ),

                ElevatedButton(
                  child: Text(
                    "Register",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 58, 153, 217),
                    padding:
                    const EdgeInsets.symmetric(horizontal: 150.0, vertical: 15.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context)=>LoginScreen())));
                    }
                  },
                ),

                Padding(
                    padding: const EdgeInsets.only(bottom: 35),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: ((context)=>LoginScreen())));
                      },
                      child: const Text("Sudah memiliki akun? Login"),
                    )
                ),
              ],
            ),
          ),
        )
    );
  }
}