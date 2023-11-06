import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:userprofile/config/dimens.dart';
import 'package:userprofile/config/extensions.dart';
import 'package:userprofile/widgets/skill_instance.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.appbartitle),
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
                        'assets/images/me.jpg',
                        // Assets.images.me.path,
                        width: 70,
                        height: 70,
                      )),
                  Padding(
                    padding: EdgeInsets.all(Dimens.medium.toDouble()),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppLocalizations.of(context)!.name,
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Dimens.small.sizedBoxHeight,
                        Text(
                          AppLocalizations.of(context)!.job,
                          style: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w400),
                        ),
                        Dimens.small.sizedBoxHeight,
                        Row(
                          children: [
                            const Icon(
                              CupertinoIcons.location_solid,
                            ),
                            // Dimens.small.sizedBoxWidth,
                            Text(AppLocalizations.of(context)!.cityCountry)
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),

            ///TODO:Descrription
            Padding(
              padding: const EdgeInsets.fromLTRB(32, 0, 32, 16),
              child: Text(
                AppLocalizations.of(context)!.description,
                style: const TextStyle(
                  fontSize: 18,
                  height: 1.5,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.justify,
                textDirection: TextDirection.ltr,
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.only(left: 32, top: 5),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    AppLocalizations.of(context)!.skill,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const Icon(
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
                        imgpath: 'assets/images/as.png'),
                    SkillInstance(
                        title: 'Vs Code',
                        imgpath: 'assets/images/vs.png',
                        isActive: false,
                        shadow: Colors.blue),
                    SkillInstance(
                        isActive: false,
                        shadow: Colors.pink,
                        title: 'Figma',
                        imgpath: 'assets/images/figma.png'),
                    SkillInstance(
                        isActive: false,
                        shadow: Colors.purpleAccent,
                        title: 'Git',
                        imgpath: 'assets/images/git.png'),
                    SkillInstance(
                        isActive: false,
                        shadow: Colors.purple,
                        title: 'Adobe Xd',
                        imgpath: 'assets/images/xd.png'),
                    SkillInstance(
                        isActive: false,
                        shadow: Colors.blueAccent,
                        title: 'PhotoShop',
                        imgpath: 'assets/images/ps.png'),
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
                  Text(
                    AppLocalizations.of(context)!.personalInfo,
                    style: const TextStyle(
                        fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  Dimens.medium.sizedBoxHeight,
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white10,
                      border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      hintText: AppLocalizations.of(context)!.email,
                      prefixIcon: const Icon(CupertinoIcons.at),
                    ),
                  ),
                  Dimens.medium.sizedBoxHeight,
                  TextField(
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      filled: true,
                      fillColor: Colors.white10,
                      hintText: AppLocalizations.of(context)!.password,
                      prefixIcon: const Icon(CupertinoIcons.lock),
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
                          AppLocalizations.of(context)!.save,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
                        )),
                  ),
                  const SizedBox(
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
