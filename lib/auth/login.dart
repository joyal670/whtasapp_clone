// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/core/dim.dart';

import '../core/colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: ElevatedButton(
        onPressed: () {},
        child: Text(
          'Next',
          style: TextStyle(color: colorWhite),
        ),
        style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(colorDarkGreen)),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            height25,
            Text(
              'Enter your phone number',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            height15,
            RichText(
                textAlign: TextAlign.center,
                text: TextSpan(children: [
                  TextSpan(text: 'Whatsapp will need to verify your account. '),
                  TextSpan(
                      text: "What's my number?",
                      style: TextStyle(color: colorDarkGreen)),
                ])),
            height10,
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.5,
              child: TextField(
                enabled: false,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: 'English',
                  hintStyle: TextStyle(
                      color: colorBlack,
                      fontWeight: FontWeight.normal,
                      fontSize: 14),
                  suffixIcon: Icon(
                    Icons.arrow_drop_down,
                    color: colorDarkGreen,
                  ),
                  disabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: colorDarkGreen),
                  ),
                ),
              ),
            ),
            height15,
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.5,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: TextField(
                      enabled: false,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        hintText: '91',
                        hintStyle: TextStyle(
                            color: colorBlack,
                            fontWeight: FontWeight.normal,
                            fontSize: 14),
                        prefixIcon: Icon(
                          Icons.add,
                          color: colorGrey,
                        ),
                        disabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: colorDarkGreen),
                        ),
                      ),
                    ),
                  ),
                  width15,
                  Expanded(
                    flex: 3,
                    child: TextField(
                      keyboardType: TextInputType.phone,
                      maxLength: 10,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        counterText: '',
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: colorDarkGreen),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: colorDarkGreen),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            height15,
            Text(
              'Carrier charges may apply',
              style: TextStyle(color: colorGrey),
            ),
          ],
        ),
      ),
    );
  }
}
