import 'package:credpal_test/util/app_colors.dart';
import 'package:credpal_test/util/ui/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: kD0DAFF,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(150),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(children: [CustomText.w500('Pay later everywhere')]),
          ),
        ),
      ),
      body: Column(children: []),
    );
  }
}
