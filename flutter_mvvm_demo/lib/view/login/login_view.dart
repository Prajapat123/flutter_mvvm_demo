import 'package:flutter/material.dart';
import 'package:flutter_mvvm_demo/utils/utils.dart';
import 'package:flutter_mvvm_demo/view_model/controller/login_view_model.dart';
import 'package:get/get.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final loginVM = Get.put(LoginModel());
  final _formkey = GlobalKey<FormState>;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text('Login'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Form(
            // key: _formkey,
            child: Column(
              children: [
                TextFormField(
                  controller: loginVM.emailController.value,
                  focusNode: loginVM.emailFocusNode.value,
                  decoration: InputDecoration(hintText: 'Enter Email'),
                  onFieldSubmitted: (value) {
                    Utils.fieldFocusChange(
                        context,
                        loginVM.emailFocusNode.value,
                        loginVM.passwordFocusNode.value);
                  },
                ),
                TextFormField(
                  controller: loginVM.passwordController.value,
                  focusNode: loginVM.passwordFocusNode.value,
                  decoration: InputDecoration(hintText: 'Enter Email'),
                  onFieldSubmitted: (value) {},
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          MaterialButton(
            color: Colors.black,
            onPressed: () {
              loginVM.loginApi();
              // if(_formkey.currentContext.validate()){

              // }
            },
          )
        ],
      ),
    );
  }
}
