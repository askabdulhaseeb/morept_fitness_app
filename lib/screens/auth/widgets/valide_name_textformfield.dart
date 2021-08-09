import 'package:flutter/material.dart';

class ValideNameTextFormField extends StatefulWidget {
  const ValideNameTextFormField({
    Key? key,
    required TextEditingController name,
  })  : _name = name,
        super(key: key);
  final TextEditingController _name;
  @override
  _ValideNameTextFormFieldState createState() =>
      _ValideNameTextFormFieldState();
}

class _ValideNameTextFormFieldState extends State<ValideNameTextFormField> {
  void onListener() => setState(() {});
  @override
  void initState() {
    widget._name.addListener(onListener);
    super.initState();
  }

  @override
  void dispose() {
    widget._name.removeListener(onListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 8),
      child: TextFormField(
        controller: widget._name,
        keyboardType: TextInputType.name,
        textInputAction: TextInputAction.next,
        autofillHints: const <String>[AutofillHints.name],
        validator: (String? value) {
          if (value!.length < 3) return 'Enter Correct Name';
          return null;
        },
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(10),
          hintText: 'Name',
          prefix: Container(width: 10),
          suffixIcon: IconButton(
            icon: (widget._name.text.isEmpty)
                ? const SizedBox(width: 0)
                : const Icon(Icons.clear),
            onPressed: () => widget._name.clear(),
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
