
import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key, required this.hint,  this.maxlines =1, this.onSaved,this.onChanged
  });
  final String hint;
  final int maxlines;
  final void Function(String?)? onSaved;
  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      onSaved: onSaved,
      validator: (value) {
        if(value!.isEmpty)
        {
          return 'field is required';
        }
        else
        {
          return null;
        }
      },
      maxLines: maxlines,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintText: hint,
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder buildBorder([Color? color]) {
    return OutlineInputBorder( 
        borderRadius: BorderRadius.circular(10),
        borderSide:  BorderSide(color:  color ?? Colors.white)
      );
  }
}