import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:smart_nir/ui/screens/main_bottom_nav_bar.dart';
import 'package:smart_nir/ui/screens/utils/text_style.dart';
import 'package:smart_nir/ui/widgets/auth/app_elevated_button.dart';
import 'package:smart_nir/ui/widgets/auth/app_text_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final TextEditingController _emailETController = TextEditingController();
  final TextEditingController _passwordETController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  void _login() async {
    final String email = _emailETController.text;
    final String password = _passwordETController.text;

    if (_formKey.currentState!.validate()) {
      Get.to(const MainBottomNavBar());


      return;
    }
    else
      {
        Get.snackbar('Error','User or Password can not be empty');
      }





  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "User ID",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                AppTextFieldWidget(
                  icon:Icons.check,
                  controller: _emailETController,
                  hintText: 'Mirza Ahmed',
                  validator: (value) {
                    if (value?.isEmpty ?? true) {
                      return 'Enter your valid email';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  "Password",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 5),
                AppTextFieldWidget(
                  icon:Icons.visibility,
                  obscureText: true,
                  hintText: '●●●●●●●●',
                  controller: _passwordETController,
                  validator: (value) {
                    if ((value?.isEmpty ?? true) &&
                        ((value?.length ?? 0) < 6)) {
                      return 'Enter password more than 6';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 16,
                ),

                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      // Forgot password logic
                    },
                    child: const Text(
                      "Forgot Password?",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),

            AppElevatedButton(
              onTap: _login



            ),
                const SizedBox(
                  height: 24,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account?"),
                    TextButton(
                      onPressed: () {
                        // Get.to(const SignUpScreen());
                      },
                      child: const Text(
                        'Open Now',
                        style: TextStyle(color: Colors.indigoAccent),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),

    );
  }
}
