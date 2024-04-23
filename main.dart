import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          dividerTheme: DividerThemeData(color: Colors.white, thickness: 0.4),
          brightness: Brightness.dark,
          primarySwatch: Colors.blue,
          appBarTheme:
              const AppBarTheme(color: Color.fromARGB(110, 65, 65, 65)),
          scaffoldBackgroundColor: Colors.black,
          textTheme: GoogleFonts.latoTextTheme(const TextTheme(
              bodyText1: TextStyle(fontSize: 15),
              bodyText2: TextStyle(fontSize: 13),
              headline6: TextStyle(fontWeight: FontWeight.bold),
              subtitle1: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))),
        ),
        home: const MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

enum Skill { photoshop, xd, illustrator, afterEffect, lightRoom }

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Skill _skill = Skill.photoshop;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pofile',
          style: Theme.of(context).textTheme.headline4,
        ),
        actions: [
          Icon(CupertinoIcons.chat_bubble),
          SizedBox(width: 12),
          Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 12, 0),
              child: Icon(CupertinoIcons.moon))
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Expanded(
              child: Row(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        "assets/images/profile_image.png",
                        width: 60,
                        height: 60,
                      )),
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "David Anderson",
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text("Lorem ipsum dolor sit amet, consectetur"),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(children: [
                          const Icon(
                            CupertinoIcons.location_solid,
                            size: 18,
                          ),
                          Text("France, Paris")
                        ]),
                      ],
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 22),
                      child: Icon(CupertinoIcons.heart))
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua Egestas purus viverra accumsan in nisl nisi Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque In egestas erat imperdiet sed euismod nisi porta lorem mollis Morbi tristique senectus et netus"),
          ),
          const Divider(
            indent: 24,
            endIndent: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(32, 16, 32, 0),
                child: Text(
                  "Skills",
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(fontWeight: FontWeight.w900),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 22),
                child: Icon(
                  CupertinoIcons.chevron_down,
                  size: 24,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 14,
          ),
          Center(
            child: Wrap(
              spacing: 10,
              runSpacing: 10,
              direction: Axis.horizontal,
              children: [
                SkillItem(
                  title: "photoshop",
                  shadowColor: Colors.grey,
                  isActive: true,
                  image: Image.asset(
                    "assets/images/app_icon_01.png",
                    width: 55,
                    height: 55,
                  ),
                ),
                SkillItem(
                  title: "Light Room",
                  shadowColor: Colors.grey,
                  isActive: false,
                  image: Image.asset(
                    "assets/images/app_icon_02.png",
                    width: 55,
                    height: 55,
                  ),
                ),
                SkillItem(
                  title: "After Effect",
                  shadowColor: Colors.amber.withOpacity(0.2),
                  isActive: true,
                  image: Image.asset(
                    "assets/images/app_icon_03.png",
                    width: 55,
                    height: 55,
                  ),
                ),
                SkillItem(
                  title: "Illistator",
                  shadowColor: Colors.grey,
                  isActive: true,
                  image: Image.asset(
                    "assets/images/app_icon_04.png",
                    width: 55,
                    height: 55,
                  ),
                ),
                SkillItem(
                  title: "AdobeXD",
                  shadowColor: Colors.grey,
                  isActive: true,
                  image: Image.asset(
                    "assets/images/app_icon_05.png",
                    width: 55,
                    height: 55,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class SkillItem extends StatelessWidget {
  final String title;
  final Image image;
  final Color shadowColor;
  final bool isActive;
  final _skill type;

  const SkillItem({
    Key? key,
    required this.title,
    required this.shadowColor,
    required this.isActive,
    required this.image,
    this.type,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: isActive
          ? BoxDecoration(
              color: shadowColor,
              borderRadius: BorderRadius.circular(12),
            )
          : null,
      width: 110,
      height: 110,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          image,
          SizedBox(
            height: 6,
          ),
          Text(title),
        ],
      ),
    );
  }
}
