import 'package:flutter/material.dart';
import '../../../config/app_images.dart';
import '../../auth/questionsScreens/multi_step_1.dart';
import '../../widgets/custom_inkwell_button.dart';
import '../widgets/valide_email_textformfield.dart';
import '../widgets/valide_name_textformfield.dart';
import '../widgets/valide_password_textformfield.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);
  static const String routeName = '/SignupScreen';

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController _name = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Form(
          key: _globalKey,
          child: Column(
            children: <Widget>[
              const SizedBox(height: 60),
              Container(
                height: 100,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Image.asset(iAppLogoLight),
              ),
              ValideNameTextFormField(name: _name),
              ValideEmailTextFormField(email: _email),
              ValidePasswordTextFormField(password: _password),
              const SizedBox(height: 20),
              CustomInkWellButton(
                onTap: () {
                  Navigator.of(context).pushNamed(MultiStep1.routeName);
                },
                child: const Text('Sign Up'),
              ),
              const Spacer(),
              const GoToLoginScreenLine(),
            ],
          ),
        ),
      ),
    );
  }
}

class GoToLoginScreenLine extends StatelessWidget {
  const GoToLoginScreenLine({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text(
          '''You already have an account?''',
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
        TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Login'))
      ],
    );
  }
}
