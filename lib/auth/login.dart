// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/core/dim.dart';

import '../core/colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final phoneController = TextEditingController();

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: ElevatedButton(
        onPressed: () {
          final text = phoneController.text;

          if (text.isEmpty) {
            pop_up(
              context,
              'Please enter your phone number',
            );
          } else if (text.length < 10) {
            pop_up(context, 'The phone number you entered is too short.');
          } else {
            pop_up1(context, 'You entered the phone number:', text);
          }
        },
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
                      controller: phoneController,
                      keyboardType: TextInputType.phone,
                      maxLength: 10,
                      decoration: InputDecoration(
                        hintText: 'phone number',
                        hintStyle: TextStyle(color: colorGrey),
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

  Future<void> pop_up(BuildContext context, String title) {
    return showDialog<void>(
      context: context,
      barrierDismissible: true, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          content: Text(title),
          actions: <Widget>[
            TextButton(
              child: const Text(
                'OK',
                style: TextStyle(color: colorDarkGreen, fontSize: 14),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Future<void> pop_up1(BuildContext context, String title, String mobile) {
    return showDialog<void>(
      context: context,
      barrierDismissible: true, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          content: SingleChildScrollView(
              child: ListBody(
            children: <Widget>[
              Text(title),
              height10,
              Text(
                mobile,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              height10,
              Text('Is this OK, or would you like to edit the number'),
            ],
          )),
          actions: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  child: const Text(
                    'Edit',
                    style: TextStyle(color: colorDarkGreen, fontSize: 14),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                TextButton(
                  child: const Text(
                    'OK',
                    style: TextStyle(color: colorDarkGreen, fontSize: 14),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/OTPScreen');
                  },
                ),
              ],
            ),
          ],
        );
      },
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
    language.add(Languages(
        'Afghanistan',
        "",
        "https://www.worldometers.info//img/flags/small/tn_af-flag.gif",
        "+93"));
    language.add(Languages(
        'Australia',
        "",
        "https://www.worldometers.info//img/flags/small/tn_as-flag.gif",
        "+61"));
    language.add(Languages(
        'Bahrain',
        "",
        "https://www.worldometers.info//img/flags/small/tn_ba-flag.gif",
        "+973"));
    language.add(Languages(
        'Bangladesh',
        "",
        "https://www.worldometers.info//img/flags/small/tn_bg-flag.gif",
        "+880"));
    language.add(Languages(
        'China',
        "",
        "https://www.worldometers.info//img/flags/small/tn_ch-flag.gif",
        "+86"));
    language.add(Languages(
        'Denmark',
        "",
        "https://www.worldometers.info//img/flags/small/tn_da-flag.gif",
        "+45"));
    language.add(Languages(
        'Egypt',
        "",
        "https://www.worldometers.info//img/flags/small/tn_eg-flag.gif",
        "+20"));
    language.add(Languages(
        'Finland',
        "",
        "https://www.worldometers.info//img/flags/small/tn_fi-flag.gif",
        "+358"));
    language.add(Languages(
        'Germany',
        "",
        "https://www.worldometers.info//img/flags/small/tn_gm-flag.gif",
        "+49"));
    language.add(Languages(
        'Hungary',
        "",
        "https://www.worldometers.info//img/flags/small/tn_hu-flag.gif",
        "+36"));
    language.add(Languages(
        'Japan',
        "",
        "https://www.worldometers.info//img/flags/small/tn_ja-flag.gif",
        "+81"));
    language.add(Languages(
        'Kuwait',
        "",
        "https://www.worldometers.info//img/flags/small/tn_ku-flag.gif",
        "+965"));
    language.add(Languages(
        'Libya',
        "",
        "https://www.worldometers.info//img/flags/small/tn_ly-flag.gif",
        "+218"));
    language.add(Languages(
        'Maldives',
        "",
        "https://www.worldometers.info//img/flags/small/tn_mv-flag.gif",
        "+960"));
    language.add(Languages(
        'Panama',
        "",
        "https://www.worldometers.info//img/flags/small/tn_pm-flag.gif",
        "+Panama"));
    language.add(Languages(
        'South Africa',
        "",
        "https://www.worldometers.info//img/flags/small/tn_sf-flag.gif",
        "+27"));
    language.add(Languages(
        'Switzerland',
        "",
        "https://www.worldometers.info//img/flags/small/tn_sz-flag.gif",
        "+41"));
    language.add(Languages(
        'Ukraine',
        "",
        "https://www.worldometers.info//img/flags/small/tn_up-flag.gif",
        "+380"));
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
            return InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: ListTile(
                leading: Image.network(
                  language[index].image,
                  width: 20,
                  height: 20,
                ),
                title: Text(language[index].title),
                //  subtitle: Text(language[index].subTitle),
                trailing: Text(
                  language[index].code,
                  style:
                      TextStyle(fontWeight: FontWeight.bold, color: colorGrey),
                ),
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
