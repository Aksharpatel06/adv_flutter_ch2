import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bottom_style.dart';

class IntroPlanScreen extends StatelessWidget {
  const IntroPlanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffFFF2BD),
      child: Center(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('asset/img/img_2.png'), fit: BoxFit.cover)),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  CupertinoButton(
                    child: Icon(
                      CupertinoIcons.back,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Skip',
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(fontWeight: FontWeight.w400, fontSize: 18),
                    ),
                  ),
                ],
              ),
              Spacer(),
              introTextandButtom(
                  context: context,
                  height1: 10,
                  width1: 10,
                  height2: 10,
                  width2: 25,
                  height3: 10,
                  width3: 10,
                  title: "Fix your plan",
                  subtitle:
                      "Unlock new opportunities , Connect with a vibrant community , Learn and grow at your own pace,Find resources tailored to you, And take your experience to the next level.",
                  buttomntext: "Next",
                  color: Colors.blueAccent)
            ],
          ),
        ),
      ),
    );
  }
}
