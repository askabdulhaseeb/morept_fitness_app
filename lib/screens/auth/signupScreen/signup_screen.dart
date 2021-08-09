import 'package:flutter/material.dart';
import 'package:morept_fitness_app/screens/auth/questionsScreens/multi_step_1.dart';
import '../../../config/app_images.dart';
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
              SignupButton(
                name: _name,
                email: _email,
                password: _password,
                globalKey: _globalKey,
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

class SignupButton extends StatelessWidget {
  const SignupButton({
    required TextEditingController name,
    required TextEditingController email,
    required TextEditingController password,
    required GlobalKey<FormState> globalKey,
    Key? key,
  })  : _name = name,
        _email = email,
        _password = password,
        _globalKey = globalKey,
        super(key: key);
  final TextEditingController _name;
  final TextEditingController _email;
  final TextEditingController _password;
  final GlobalKey<FormState> _globalKey;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return InkWell(
      borderRadius: BorderRadius.circular(30),
      onTap: () {
        if (_globalKey.currentState!.validate()) {
          Navigator.of(context).pushNamed(MultiStep1.routeName);
        }
      },
      child: Container(
        height: 44,
        width: size.width / 2,
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 20),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(
              color: Theme.of(context).accentColor,
            )),
        child: const Text(
          'Sign Up',
          style: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 20,
            letterSpacing: 1,
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
