import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomDrawer extends StatefulWidget {
  final AnimationController? controller;
  final Animation<double>? animation1;
  final Animation<double>? animation2;
  final Animation<double>? animation3;
  final bool isBool;
  const CustomDrawer({
    required this.controller,
    required this.animation1,
    required this.animation2,
    required this.animation3,
    required this.isBool,
    Key? key,
  }) : super(key: key);

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: BackdropFilter(
        filter: ImageFilter.blur(
            sigmaY: widget.animation1!.value, sigmaX: widget.animation1!.value),
        child: Container(
          height: widget.isBool ? 0 : _height,
          width: widget.isBool ? 0 : _width,
          color: Colors.black12,
          child: Center(
            child: Transform.scale(
              scale: widget.animation3!.value,
              child: Container(
                width: _width * .9,
                height: _width * 1.3,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 115, 102, 68)
                      .withOpacity(widget.animation2!.value),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white70,
                      radius: 55,
                      child: Image.asset(
                        'assets/images/pars-string.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Column(
                      children: [
                        MyTile(Icons.settings_outlined, 'سایر مقالات', () {
                          HapticFeedback.lightImpact();
                        }),
                        MyTile(Icons.feedback_outlined, 'انتقادات و پیشنهادات',
                            () {
                          HapticFeedback.lightImpact();
                        }),
                        MyTile(Icons.info_outline_rounded, 'اطلاعات بیشتر', () {
                          HapticFeedback.lightImpact();
                        }),
                        MyTile(Icons.alternate_email_rounded, 'راه های ارتباطی',
                            () {
                          HapticFeedback.lightImpact();
                        }),
                      ],
                    ),
                    const SizedBox(),
                    Column(
                      children: const [
                        Text(
                          'Designed & Developed by Pars String Group',
                          style: TextStyle(
                            color: Colors.white54,
                            fontSize: 10,
                          ),
                        ),
                        Text(
                          'pars.string@gmail.com',
                          style: TextStyle(
                            color: Colors.white54,
                            fontSize: 10,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget MyTile(
    IconData icon,
    String title,
    VoidCallback voidCallback,
  ) {
    return Column(
      children: [
        ListTile(
          tileColor: Colors.black.withOpacity(.08),
          leading: CircleAvatar(
            backgroundColor: Colors.black12,
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),
          onTap: voidCallback,
          title: Text(
            title,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                letterSpacing: 1),
          ),
          trailing: Icon(
            Icons.arrow_right,
            color: Colors.white,
          ),
        ),
        divider()
      ],
    );
  }

  Widget divider() {
    return Container(
      height: 5,
      width: MediaQuery.of(context).size.width,
    );
  }
}
