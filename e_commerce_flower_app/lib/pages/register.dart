// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last, use_super_parameters, unused_local_variable, avoid_print

import 'package:e_commerce_flower_app/pages/login.dart';
import 'package:e_commerce_flower_app/shared/colors.dart';
import 'package:e_commerce_flower_app/shared/mytextfield.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
   const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final myemailController = TextEditingController();

    final mypasswordController = TextEditingController();

register()async{

try {
  final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
    email: myemailController.text,
    password:mypasswordController.text,
  );
} on FirebaseAuthException catch (e) {
  if (e.code == 'weak-password') {
    print('The password provided is too weak.');
  } else if (e.code == 'email-already-in-use') {
    print('The account already exists for that email.');
  }
} catch (e) {
  print(e);
}



}
  @override
void dispose() {
   myemailController.dispose();
   mypasswordController.dispose();
   super.dispose();
}
  @override

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 247, 247, 247),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(33.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 64,
                  ),
                  TextField(
                      keyboardType: TextInputType.text,
                      obscureText: false,
                      decoration: decorationTextfield.copyWith(
                        hintText: "Enter Your username : ",
                      )),
                  const SizedBox(
                    height: 33,
                  ),
                  TextField(
                  controller:   myemailController,
                      keyboardType: TextInputType.emailAddress,
                      obscureText: false,
                      decoration: decorationTextfield.copyWith(
                        hintText: "Enter Your Email : ",
                      )),
                  const SizedBox(
                    height: 33,
                  ),
                  TextField(
                    controller: mypasswordController,
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      decoration: decorationTextfield.copyWith(
                        hintText: "Enter Your Password : ",
                      )),
                  const SizedBox(
                    height: 33,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Register",
                      style: TextStyle(fontSize: 19),
                    ),
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(BTNgreen),
                      padding: WidgetStateProperty.all(EdgeInsets.all(12)),
                      shape: WidgetStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                    ),
                  ),
                  const SizedBox(
                    height: 33,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Do not have an account?",
                          style: TextStyle(fontSize: 18)),
                      TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Login()),
                            );
                          },
                          child: Text('sign in',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 18))),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}