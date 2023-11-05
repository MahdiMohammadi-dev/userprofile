import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:userprofile/config/app_strings.dart';
import 'package:userprofile/config/dimens.dart';
import 'package:userprofile/config/extensions.dart';
import 'package:userprofile/gen/assets.gen.dart';
import 'package:userprofile/widgets/skill_instance.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("User Info"),
        actions: [
          const Icon(CupertinoIcons.chat_bubble),
          Dimens.small.sizedBoxWidth,
          const Icon(CupertinoIcons.ellipsis_vertical),
          Dimens.small.sizedBoxWidth,
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///TODO:Personal Information
            Padding(
              padding: const EdgeInsets.all(32),
              child: Row(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        Assets.images.me.path,
                        width: 70,
                        height: 70,
                      )),
                  Padding(
                    padding: EdgeInsets.all(Dimens.medium.toDouble()),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          AppStirngs.name,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Dimens.small.sizedBoxHeight,
                        const Text(
                          AppStirngs.job,
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w400),
                        ),
                        Dimens.small.sizedBoxHeight,
                        const Row(
                          children: [
                            Icon(
                              CupertinoIcons.location_solid,
                            ),
                            // Dimens.small.sizedBoxWidth,
                            Text(AppStirngs.cityCountry)
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),

            ///TODO:Descrription
            const Padding(
              padding: EdgeInsets.fromLTRB(32, 0, 32, 16),
              child: Text(
                AppStirngs.description,
                style: TextStyle(
                  fontSize: 18,
                  height: 1.5,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.justify,
                textDirection: TextDirection.ltr,
              ),
            ),
            const Divider(),
            const Padding(
              padding: EdgeInsets.only(left: 32, top: 5),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Skills",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    CupertinoIcons.chevron_down,
                    size: 12,
                  )
                ],
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Wrap(
                  direction: Axis.horizontal,
                  spacing: 15,
                  runSpacing: 15,
                  children: [
                    SkillInstance(
                        title: 'Android Studio',
                        shadow: Colors.green,
                        isActive: false,
                        imgpath: Assets.images.as.path),
                    SkillInstance(
                        title: 'Vs Code',
                        imgpath: Assets.images.vs.path,
                        isActive: false,
                        shadow: Colors.blue),
                    SkillInstance(
                        isActive: false,
                        shadow: Colors.pink,
                        title: 'Figma',
                        imgpath: Assets.images.figma.path),
                    SkillInstance(
                        isActive: false,
                        shadow: Colors.purpleAccent,
                        title: 'Git',
                        imgpath: Assets.images.git.path),
                    SkillInstance(
                        isActive: false,
                        shadow: Colors.purple,
                        title: 'Adobe Xd',
                        imgpath: Assets.images.xd.path),
                    SkillInstance(
                        isActive: false,
                        shadow: Colors.blueAccent,
                        title: 'PhotoShop',
                        imgpath: Assets.images.ps.path),
                  ],
                ),
              ),
            ),
            const Divider(),

            ///TODO:Form Section
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    AppStirngs.personalInfo,
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  Dimens.medium.sizedBoxHeight,
                  const TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white10,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      hintText: AppStirngs.email,
                      prefixIcon: Icon(CupertinoIcons.at),
                    ),
                  ),
                  Dimens.medium.sizedBoxHeight,
                  const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      filled: true,
                      fillColor: Colors.white10,
                      hintText: AppStirngs.password,
                      prefixIcon: Icon(CupertinoIcons.lock),
                    ),
                  ),
                  Dimens.medium.sizedBoxHeight,
                  SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          backgroundColor:
                              const Color.fromARGB(255, 243, 86, 138),
                        ),
                        onPressed: () {},
                        child: Text(
                          AppStirngs.save,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
                        )),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
