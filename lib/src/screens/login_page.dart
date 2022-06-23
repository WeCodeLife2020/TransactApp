import 'package:app_template/src/screens/transaction_page.dart';
import 'package:app_template/src/utils/utils.dart';
import 'package:app_template/src/widgets/build_Textinputs.dart';
import 'package:flutter/material.dart';

import '../bloc/user_bloc.dart';
import '../models/login_request_model.dart';
import '../utils/object_factory.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

bool isLoading = false;
TextEditingController usernameTextEditingController =
    TextEditingController(text: "xeroadmin@thepromptsolutions.com");
TextEditingController passwordTextEditingController =
    TextEditingController(text: "q");

class _LoginPageState extends State<LoginPage> {
  UserBloc userBloc = UserBloc();

  @override
  void initState() {
    userBloc.loginResponse.listen((event) async {
      // print(event.errorCode.toString());
      // print("object1");
    }).onError((event) {
      print(">>>>>>>>>>>>>>>");
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Center(
              child: Text(
                "Hello!",
                style: TextStyle(fontSize: 28, color: Colors.black),
              ),
            ),
            SizedBox(
              height: screenHeight(context, dividedBy: 10),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: BuildTextFieldInputs(
                textinputcontroller: usernameTextEditingController,
                hintlabel: "Username",
                labelicon: Icons.person,
              ),
            ),
            SizedBox(
              height: screenHeight(context, dividedBy: 90),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              child: BuildTextFieldInputs(
                  isPassword: true,
                  textinputcontroller: passwordTextEditingController,
                  hintlabel: "Password",
                  labelicon: Icons.key),
            ),
            SizedBox(
              height: screenHeight(context, dividedBy: 90),
            ),
            FlatButton(
              onPressed: () {
                debugPrint("forget password screen");
              },
              child: const Text(
                'Forgot Password',
              ),
            ),
            SizedBox(
              height: screenHeight(context, dividedBy: 90),
            ),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(20)),
              child: FlatButton(
                onPressed: () {
                  userBloc.login(
                      loginRequest: LoginRequest(
                          email: usernameTextEditingController.text,
                          password: passwordTextEditingController.text));

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => TransactionPage())));
                },
                child: const Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            SizedBox(
              height: screenHeight(context, dividedBy: 50),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("New User ?"),
                TextButton(
                  onPressed: () {
                    debugPrint("new account page");
                  },
                  child: Text(
                    "Create Account",
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
