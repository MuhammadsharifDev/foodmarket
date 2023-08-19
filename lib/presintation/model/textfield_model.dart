

import 'package:flutter/material.dart';

class TextFormFieldsItems{
  static TextFormField items({required String text,}){
    return TextFormField(
      decoration: InputDecoration(
        hintText: text,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8)),
      ),
    );
  }
}