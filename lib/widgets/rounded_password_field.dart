import 'package:flutter/material.dart';
import 'package:otostopcunungalaksirehberi3/widgets/text_field_container.dart';
import '../constants.dart';

class RoundedPasswordField extends StatelessWidget {
  const RoundedPasswordField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        obscureText: true,
        cursorColor: kPrimaryColor,
        decoration: const InputDecoration(
            icon: Icon(
              Icons.lock,
              color: kPrimaryColor,
            ),
            hintText: "Şifre",
            hintStyle: TextStyle(fontFamily: 'OpenSans'),
            // suffixIcon: Icon(
            //   Icons.visibility,
            //   color: kPrimaryColor,
            // ),
            border: InputBorder.none),
      ),
    );
  }
}
