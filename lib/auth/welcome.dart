// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/core/colors.dart';
import 'package:whatsapp_clone/core/dim.dart';
import 'package:whatsapp_clone/model/LanguagesModel.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  List<LanguagesModel> language = [];
  String? model;

  @override
  void initState() {
    language.add(LanguagesModel('English', "(device's language)"));
    language.add(LanguagesModel('Afrikaans', 'Afrikaans'));
    language.add(LanguagesModel('shiqip', 'Albanian'));
    language.add(LanguagesModel('አማርኛ', 'Amharic'));
    language.add(LanguagesModel('اَلْعَرَبِيَّةُ', 'Arabic'));
    language.add(LanguagesModel('Azərbaycan dili', 'Azerbaijan'));
    language.add(LanguagesModel('বাংলা', 'Bengali'));
    language.add(LanguagesModel('Българи', 'Bulgarian'));
    language.add(LanguagesModel('català', 'Catalan'));
    language.add(LanguagesModel('汉语/漢語', 'zh_CN'));
    language.add(LanguagesModel('hrvatski', 'hr'));
    language.add(LanguagesModel('čeština', 'cs'));
    language.add(LanguagesModel('dansk', 'da'));
    language.add(LanguagesModel('Dutch', 'nl'));
    language.add(LanguagesModel('हिन्दी', 'hi'));
    language.add(LanguagesModel('اردو', 'ur'));
    language.add(LanguagesModel('TiếngViệt', 'vi'));
    language.add(LanguagesModel('isiZulu', 'Zulu'));

    model = language[0].title;

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ElevatedButton(
          onPressed: () {},
          child: Text(
            'Agree and contiune',
            style: TextStyle(color: colorWhite),
          ),
          style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(colorDarkGreen)),
        ),
      ),
      body: Column(
        children: [
          height25,
          Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage("assets/background1.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                height20,
                Text(
                  'Welcome to WhatsApp',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                height15,
                RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(children: [
                      TextSpan(text: 'Read our '),
                      TextSpan(
                          text: 'Privacy Policy. ',
                          style: TextStyle(color: colorBlue)),
                      TextSpan(text: 'Tap "Agree and continue" to accept the '),
                      TextSpan(
                          text: 'Terms of Service.',
                          style: TextStyle(color: colorBlue)),
                    ])),
                height15,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        showModalBottomSheet<void>(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              padding: EdgeInsets.all(14),
                              decoration: BoxDecoration(
                                  color: colorWhite,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20))),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      InkWell(
                                          onTap: () {
                                            Navigator.pop(context);
                                          },
                                          child: Icon(Icons.close)),
                                      width20,
                                      Text(
                                        'App language',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                  Divider(),
                                  Expanded(
                                    child: ListView.separated(
                                        shrinkWrap: true,
                                        itemBuilder: (context, index) {
                                          return ListTile(
                                            leading: Radio(
                                              value: language[index].title,
                                              groupValue: model,
                                              onChanged: (value) {
                                                setState(() {
                                                  model = value;
                                                });
                                              },
                                            ),
                                            title: Text(language[index].title),
                                            subtitle:
                                                Text(language[index].subTitle),
                                          );
                                        },
                                        separatorBuilder: (context, index) =>
                                            height15,
                                        itemCount: language.length),
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: colorGrey.withOpacity(.2),
                            borderRadius: BorderRadius.circular(30)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.language, color: colorLightDarkGreen),
                            width10,
                            Text(
                              'English',
                              style: TextStyle(color: colorLightDarkGreen),
                            ),
                            width10,
                            Icon(Icons.keyboard_arrow_down,
                                color: colorLightDarkGreen),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
