import 'package:flutter/material.dart';

class ValideEmailTextFormField extends StatefulWidget {
  const ValideEmailTextFormField({
    Key? key,
    required TextEditingController email,
  })  : _email = email,
        super(key: key);
  final TextEditingController _email;
  @override
  _ValideEmailTextFormFieldState createState() =>
      _ValideEmailTextFormFieldState();
}

class _ValideEmailTextFormFieldState extends State<ValideEmailTextFormField> {
  void onListener() => setState(() {});
  @override
  void initState() {
    widget._email.addListener(onListener);
    super.initState();
  }

  @override
  void dispose() {
    widget._email.removeListener(onListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 8),
      child: TextFormField(
        controller: widget._email,
        keyboardType: TextInputType.emailAddress,
        textInputAction: TextInputAction.next,
        autofillHints: const <String>[AutofillHints.email],
        validator: (String? value) {
          if (!RegExp(
                  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
              .hasMatch(value!)) {
            return 'Email is Invalide';
          }
          return null;
        },
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(10),
          hintText: 'Email',
          prefix: Container(width: 10),
          suffixIcon: IconButton(
            splashRadius: 20,
            icon: (widget._email.text.isEmpty)
                ? const SizedBox(width: 0)
                : const Icon(Icons.clear),
            onPressed: () => widget._email.clear(),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide:
                BorderSide(color: Theme.of(context).primaryColor, width: 0.5),
          ),
        ),
      ),
    );
  }
}
