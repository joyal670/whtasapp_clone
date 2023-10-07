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
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/LanguageSelect');
                },
                child: TextField(
                  enabled: false,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: 'India',
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

class Languages {
  String title;
  String subTitle;
  String image;
  String code;

  Languages(this.title, this.subTitle, this.image, this.code);
}

class LanguageSelectScreen extends StatefulWidget {
  const LanguageSelectScreen({super.key});

  @override
  State<LanguageSelectScreen> createState() => _LanguageSelectScreenState();
}

class _LanguageSelectScreenState extends State<LanguageSelectScreen> {
  List<Languages> language = [];

  @override
  void initState() {
    language.add(Languages(
        'India',
        "",
        "https://www.worldometers.info//img/flags/small/tn_in-flag.gif",
        "+91"));
    language.add(Languages(
        'Pakistan',
        "",
        "https://www.worldometers.info//img/flags/small/tn_pk-flag.gif",
        "+92"));
    language.add(Languages('Afghanistan', "",
        "https://www.worldometers.info//img/flags/small/tn_af-flag.gif", "+1"));
    language.add(Languages('Australia', "",
        "https://www.worldometers.info//img/flags/small/tn_as-flag.gif", "+1"));
    language.add(Languages('Bahrain', "",
        "https://www.worldometers.info//img/flags/small/tn_ba-flag.gif", "+1"));
    language.add(Languages('Bangladesh', "",
        "https://www.worldometers.info//img/flags/small/tn_bg-flag.gif", "+1"));
    language.add(Languages('China', "",
        "https://www.worldometers.info//img/flags/small/tn_ch-flag.gif", "+1"));
    language.add(Languages('Denmark', "",
        "https://www.worldometers.info//img/flags/small/tn_da-flag.gif", "+1"));
    language.add(Languages('Egypt', "",
        "https://www.worldometers.info//img/flags/small/tn_eg-flag.gif", "+1"));
    language.add(Languages('Finland', "",
        "https://www.worldometers.info//img/flags/small/tn_fi-flag.gif", "+1"));
    language.add(Languages('Germany', "",
        "https://www.worldometers.info//img/flags/small/tn_gm-flag.gif", "+1"));
    language.add(Languages('Hungary', "",
        "https://www.worldometers.info//img/flags/small/tn_hu-flag.gif", "+1"));
    language.add(Languages('Japan', "",
        "https://www.worldometers.info//img/flags/small/tn_ja-flag.gif", "+1"));
    language.add(Languages('Kuwait', "",
        "https://www.worldometers.info//img/flags/small/tn_ku-flag.gif", "+1"));
    language.add(Languages('Libya', "",
        "https://www.worldometers.info//img/flags/small/tn_ly-flag.gif", "+1"));
    language.add(Languages('Maldives', "",
        "https://www.worldometers.info//img/flags/small/tn_mv-flag.gif", "+1"));
    language.add(Languages('Panama', "",
        "https://www.worldometers.info//img/flags/small/tn_pm-flag.gif", "+1"));
    language.add(Languages(
        'South Africa',
        "",
        "https://www.worldometers.info//img/flags/small/tn_sf-flag.gif",
        "+27"));
    language.add(Languages(
        'Switzerland',
        "",
        "https://www.worldometers.info//img/flags/small/tn_sz-flag.gif",
        "+44"));
    language.add(Languages('Ukraine', "",
        "https://www.worldometers.info//img/flags/small/tn_up-flag.gif", "+1"));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Choose a country',
          style: TextStyle(color: colorDarkGreen, fontWeight: FontWeight.w500),
        ),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              leading: Image.network(
                language[index].image,
                width: 20,
                height: 20,
              ),
              title: Text(language[index].title),
              subtitle: Text(language[index].subTitle),
              trailing: Text(
                language[index].code,
                style: TextStyle(fontWeight: FontWeight.bold, color: colorGrey),
              ),
            );
          },
          separatorBuilder: (context, index) => Divider(
                thickness: .3,
              ),
          itemCount: language.length),
    );
  }
}
