import 'package:flutter/material.dart';
import 'package:to_do_app_with_hive/utils/my_button.dart';

class DialogBox extends StatelessWidget {
  DialogBox(
      {super.key,
      required this.controller,
      required this.onSave,
      required this.onCancel});
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Color(0xfff3e7e9),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      content: Container(
        height: 180,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextField(
              controller: controller,
              maxLength: 100,
              minLines: 1,
              maxLines: 3,
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  hintText: "Add a new task"),
            ),

            // buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // save button
                MyButton(text: "Save", onPressed: onSave),

                SizedBox(
                  width: 10,
                ),

                // cancel button
                MyButton(text: "Cancel", onPressed: onCancel)
              ],
            )
          ],
        ),
      ),
    );
  }
}
