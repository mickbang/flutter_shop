import 'package:flutter/material.dart';
import 'package:flutter_shop_cc/config/string.dart';
import '../config/index.dart';

class MemberPage extends StatefulWidget {
  const MemberPage({super.key});

  @override
  State<StatefulWidget> createState() => MemberState();
}

class MemberState extends State<MemberPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(QString.memberTitle),
    );
  }
}
