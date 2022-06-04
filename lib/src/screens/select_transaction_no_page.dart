import 'package:app_template/src/screens/image_input_page.dart';
import 'package:app_template/src/utils/utils.dart';
import 'package:flutter/material.dart';

class SelectTransactionNoPage extends StatelessWidget {
  final String contentText;

  const SelectTransactionNoPage({
    Key? key,
    required this.contentText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Transaction ID",
          style: TextStyle(color: Colors.black, fontSize: 30),
        ),
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: SizedBox(
          height: screenHeight(context,dividedBy: 1.4),
          child: ListView.builder(
            itemBuilder: (context, index) => Center(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("id"),
            )),
            itemCount: 46,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(15.0),
        child: FloatingActionButton(
          child: Icon(Icons.done),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: ((context) => Image_Input_Page())));
          },
        ),
      ),
    );
  }
}
