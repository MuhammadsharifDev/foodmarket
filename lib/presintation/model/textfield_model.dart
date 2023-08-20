

import 'package:flutter/material.dart';

class TextFormFieldsItems{
  static InputDecoration items({required String text,}){
    return InputDecoration(
        hintText: text,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8)),

    );
  }
}