// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/model/LanguagesModel.dart';

import '../core/colors.dart';
import '../core/dim.dart';

class LanguageSelectionScreen extends StatefulWidget {
  const LanguageSelectionScreen({super.key});

  @override
  State<LanguageSelectionScreen> createState() =>
      _LanguageSelectionScreenState();
}

class _LanguageSelectionScreenState extends State<LanguageSelectionScreen> {
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
    language.add(LanguagesModel('Catalan', 'Catalan'));
    language.add(LanguagesModel('Chinese (CHN)', 'zh_CN'));
    language.add(LanguagesModel('Chinese (HKG)', 'zh_HK'));
    language.add(LanguagesModel('Croatian', 'hr'));
    language.add(LanguagesModel('Czech', 'cs'));
    language.add(LanguagesModel('Danish', 'da'));
    language.add(LanguagesModel('Dutch', 'nl'));
    language.add(LanguagesModel('English', 'en'));
    language.add(LanguagesModel('Hindi', 'hi'));
    language.add(LanguagesModel('Urdu', 'ur'));
    language.add(LanguagesModel('Vietnamese', 'vi'));
    language.add(LanguagesModel('Zulu', 'Zulu'));

    model = language[0].title;

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: colorLightDarkGreen,
        child: Icon(
          Icons.arrow_forward,
          color: colorWhite,
        ),
        onPressed: () {},
      ),
      body: Column(
        children: [
          Expanded(
              flex: 1,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("assets/background1.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Welcome to WhatsApp',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        height10,
                        Text('Choose your language to get started',
                            style: TextStyle(
                                fontWeight: FontWeight.normal, fontSize: 14)),
                      ],
                    ),
                  ),
                ],
              )),
          Expanded(
            flex: 3,
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
                    subtitle: Text(language[index].subTitle),
                  );
                },
                separatorBuilder: (context, index) => height15,
                itemCount: language.length),
          ),
        ],
      ),
    );
  }
}
