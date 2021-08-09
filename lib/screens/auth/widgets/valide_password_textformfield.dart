import 'package:flutter/material.dart';

class ValidePasswordTextFormField extends StatefulWidget {
  const ValidePasswordTextFormField(
      {Key? key, required TextEditingController password})
      : _password = password,
        super(key: key);
  final TextEditingController _password;
  @override
  _ValidePasswordTextFormFieldState createState() =>
      _ValidePasswordTextFormFieldState();
}

class _ValidePasswordTextFormFieldState
    extends State<ValidePasswordTextFormField> {
  void onListener() => setState(() {});
  bool _showPassword = true;

  @override
  void initState() {
    _showPassword = true;
    widget._password.addListener(onListener);
    super.initState();
  }

  @override
  void dispose() {
    widget._password.removeListener(onListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: TextFormField(
        controller: widget._password,
        obscureText: _showPassword,
        keyboardType: TextInputType.visiblePassword,
        textInputAction: TextInputAction.done,
        autofillHints: const <String>[AutofillHints.password],
        validator: (String? value) {
          if (value!.length < 6) {
            return 'Password should be greater then 6 digits';
          }
          return null;
        },
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(10),
          hintText: 'Password',
          prefix: Container(width: 10),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide:
                BorderSide(color: Theme.of(context).primaryColor, width: 0.5),
          ),
          suffixIcon: (widget._password.text.isEmpty)
              ? Container(width: 0)
              : IconButton(
                  splashRadius: 20,
                  icon: (_showPassword == true)
                      ? const Icon(Icons.visibility)
                      : const Icon(Icons.visibility_off),
                  onPressed: () {
                    setState(
                      () {
                        _showPassword = !_showPassword;
                      },
                    );
                  },
                ),
        ),
      ),
    );
  }
}
