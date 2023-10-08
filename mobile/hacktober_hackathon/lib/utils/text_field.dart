import 'package:flutter/material.dart';

class TextFil extends StatelessWidget {
  final String hintText;
  final int maxline;
  final double borderradius;
  final double fieldWidth;
  final double textSize;
  final bool readonly;
  final double conPadding;
  final TextEditingController cont;
  final double borderwidth;

  const TextFil(
      {super.key,
      required this.hintText,
      required this.readonly,
      required this.maxline,
      required this.borderradius,
      required this.fieldWidth,
      required this.textSize,
      required this.cont,
      required this.conPadding,
      required this.borderwidth});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: fieldWidth,
      child: TextField(
        maxLength: readonly ? cont.text.length : 15,
        readOnly: readonly,
        controller: cont,
        maxLines: maxline,
        style: TextStyle(fontSize: textSize),
        decoration: InputDecoration(
            counter: const SizedBox.shrink(),
            isDense: true,
            contentPadding: EdgeInsets.all(conPadding),
            hintStyle: const TextStyle(fontSize: 14),
            hintText: hintText,
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    width: borderwidth,
                    color: Colors.black,
                    style: BorderStyle.solid),
                borderRadius: BorderRadius.all(Radius.circular(borderradius))),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    width: borderwidth,
                    color: Colors.black,
                    style: BorderStyle.solid),
                borderRadius: BorderRadius.all(Radius.circular(borderradius)))),
      ),
    );
  }
}
