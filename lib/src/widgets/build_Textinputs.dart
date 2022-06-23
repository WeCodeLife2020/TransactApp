import 'package:flutter/material.dart';

class BuildTextFieldInputs extends StatefulWidget {
  final String hintlabel;
  final IconData labelicon;
  final bool? isPassword;
  final TextEditingController textinputcontroller;

  BuildTextFieldInputs({
    Key? key,
    required this.hintlabel,
    required this.labelicon,
    required this.textinputcontroller,
    this.isPassword,
  }) : super(key: key);

  @override
  State<BuildTextFieldInputs> createState() => _BuildTextFieldInputsState();
}

class _BuildTextFieldInputsState extends State<BuildTextFieldInputs> {
  bool isPassword = false;
  @override
  void initState() {
    super.initState();
    // textinputcontroller.addListener(() {
    //   setState(() {
    //     debugPrint(textinputcontroller.text);
    //   });
    // });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: widget.isPassword ?? false,
      controller: widget.textinputcontroller,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: widget.hintlabel,
        prefixIcon: Icon(widget.labelicon, size: 15),
        suffixIcon: widget.textinputcontroller.text.isEmpty
            ? Container(
                width: 0,
              )
            : IconButton(
                onPressed: () => widget.textinputcontroller.clear(),
                icon: const Icon(Icons.close),
              ),
        border: const OutlineInputBorder(),
      ),
      textInputAction: TextInputAction.done,
    );
  }
}
