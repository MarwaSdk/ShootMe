/*--------------------------Arij Flihi ----------------------*/
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Settings',
      home: settings(),
    );
  }
}

class settings extends StatefulWidget {
  @override
  _settingsState createState() => _settingsState();
}

class _settingsState extends State<settings> {
  bool valNotify1 = true;
  bool valNotify2 = false;
  bool valNotify3 = false;
  onChangeFunction1(bool newValue1) {
    setState(() {
      valNotify1 = newValue1;
    });
  }

  onChangeFunction2(bool newValue2) {
    setState(() {
      valNotify2 = newValue2;
    });
  }

  onChangeFunction3(bool newValue3) {
    setState(() {
      valNotify3 = newValue3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "SETTINGS",
          style: TextStyle(fontSize: 22),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => StoryApp()),
            );
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: ListView(children: [
          const SizedBox(
            height: 40,
          ),
          // ignore: prefer_const_literals_to_create_immutables
          Row(
            children: [
              const Icon(
                Icons.person,
                color: Colors.blue,
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                "Account",
                style: TextStyle(fontSize: 22),
              )
            ],
          ),
          const Divider(
            height: 20,
            thickness: 1,
          ),
          const SizedBox(
            height: 10,
          ),
          buildAccountOption(context, "change password"),
          buildAccountOption(context, "Content Settings"),
          buildAccountOption(context, "Social"),
          buildAccountOption(context, "Language"),
          buildAccountOption(context, "Privacy and Security"),
          SizedBox(
            height: 40,
          ),
          Row(
            children: [
              const Icon(
                Icons.volume_up_outlined,
                color: Colors.blue,
              ),
              SizedBox(width: 10),
              Text(
                "Notifications",
                style: TextStyle(fontSize: 22),
              )
            ],
          ),
          const Divider(
            height: 20,
            thickness: 1,
          ),
          const SizedBox(
            height: 10,
          ),
          buildNotificationOption("theme dark", valNotify1, onChangeFunction1),
          buildNotificationOption(
              "Account Active", valNotify2, onChangeFunction2),
          buildNotificationOption("Vibrate", valNotify3, onChangeFunction3),
          const SizedBox(
            height: 50,
          ),
          Center(
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              onPressed: () {},
              child: const Text(
                "Sign Out",
                style: TextStyle(fontSize: 22),
              ),
            ),
          )
        ]),
      ),
    );
  }
}

Padding buildNotificationOption(
    String title, bool value, Function onChangeMethod) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: TextStyle(fontSize: 22)),
        Transform.scale(
          scale: 0.7,
          child: CupertinoSwitch(
            activeColor: Colors.blue,
            trackColor: Colors.grey,
            value: value,
            onChanged: (bool newValue) {
              onChangeMethod(newValue);
            },
          ),
        )
      ],
    ),
  );
}

GestureDetector buildAccountOption(BuildContext context, String title) {
  return GestureDetector(
    onTap: () {
      showDialog(
          context: context,
          builder: (BuildContext) {
            return AlertDialog(
              title: Text(title),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text("Yes"),
                  const Text("No"),
                ],
              ),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text("Close"))
              ],
            );
          });
    },
    child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 22),
            ),
            const Icon(Icons.arrow_forward_ios, color: Colors.grey)
          ],
        )),
  );
}
