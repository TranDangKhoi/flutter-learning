import "package:flutter/material.dart";
import "package:flutter_learning/widgets/app_text.dart";
import "package:flutter_learning/widgets/button_widget.dart";

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List<String> images = [
    "assets/images/1.png",
    "assets/images/2.png",
    "assets/images/3.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: SafeArea(
          child: Scaffold(
            body: PageView.builder(
                scrollDirection: Axis.vertical,
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: double.maxFinite,
                    height: double.maxFinite,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images" + images[index]),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Container(
                        margin: const EdgeInsets.only(
                          top: 100,
                          left: 30,
                          right: 30,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppText(
                                text: "Trips",
                                size: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                            AppText(
                                text: "Moutain", size: 30, color: Colors.white),
                            const SizedBox(height: 30),
                            SizedBox(
                              width: 300,
                              child: AppText(
                                  text:
                                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec euismod, nisl eget elementum ultricies, leo nisl ultricies odio, quis ultricies nisl nisl eu nisl. Donec euismod, nisl eget elementum ultricies, leo nisl ultricies odio, quis ultricies nisl nisl eu nisl.",
                                  size: 16,
                                  color: Colors.white.withOpacity(0.5)),
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            ButtonNext(width: 100)
                          ],
                        )),
                  );
                }),
          ),
        ));
  }
}
