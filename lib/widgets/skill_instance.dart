import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SkillInstance extends StatefulWidget {
  final String title;
  final String imgpath;
  final Color shadow;
  bool isActive;
  SkillInstance(
      {super.key,
      required this.title,
      required this.imgpath,
      required this.shadow,
      required this.isActive});

  @override
  State<SkillInstance> createState() => _SkillInstanceState();
}

class _SkillInstanceState extends State<SkillInstance> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(16),
      onTap: () {
        setState(() {
          widget.isActive = !widget.isActive;
        });
      },
      child: Container(
        width: 110,
        height: 100,
        decoration: widget.isActive
            ? BoxDecoration(
                borderRadius: BorderRadius.circular(16), color: Colors.white10)
            : null,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: widget.isActive
                  ? BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: widget.shadow,
                            blurRadius: 20,
                            spreadRadius: 4)
                      ],
                    )
                  : null,
              child: Image.asset(
                widget.imgpath,
                width: 40,
                height: 40,
              ),
            ),
            Text(widget.title,
                style: GoogleFonts.arvo(
                    fontWeight: FontWeight.bold, fontSize: 13)),
          ],
        ),
      ),
    );
  }
}
