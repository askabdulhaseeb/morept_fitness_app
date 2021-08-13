import 'package:flutter/material.dart';
import '../../../config/app_images.dart';
import '../../homeScreen/home_screen.dart';
import '../../widgets/copyrights.dart';
import '../../widgets/custom_inkwell_button.dart';
import '../signupScreen/signup_screen.dart';
import '../widgets/valide_email_textformfield.dart';
import '../widgets/valide_password_textformfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static const String routeName = '/LoginScreen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
              ValideEmailTextFormField(email: _email),
              ValidePasswordTextFormField(password: _password),
              const SizedBox(height: 20),
              CustomInkWellButton(
                onTap: () {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                    HomeScreen.routeName,
                    (Route<dynamic> route) => false,
                  );
                },
                child: const Text('Login'),
              ),
              const Spacer(),
              const GoToSignupScreenLine(),
              Copyrights(),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  const LoginButton({
    required TextEditingController email,
    required TextEditingController password,
    required GlobalKey<FormState> globalKey,
    Key? key,
  })  : _email = email,
        _password = password,
        _globalKey = globalKey,
        super(key: key);
  final TextEditingController _email;
  final TextEditingController _password;
  final GlobalKey<FormState> _globalKey;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return InkWell(
      borderRadius: BorderRadius.circular(30),
      onTap: () {
        if (_globalKey.currentState!.validate()) {}
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
          'Login',
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

class GoToSignupScreenLine extends StatelessWidget {
  const GoToSignupScreenLine({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text(
          '''Don't you have an acoount?''',
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pushNamed(SignupScreen.routeName);
          },
          child: const Text('Sign Up'),
        )
      ],
    );
  }
}
