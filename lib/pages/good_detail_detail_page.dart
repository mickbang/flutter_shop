import 'package:flutter/material.dart';

class GoodDetailDetailPage extends StatefulWidget {
  GoodDetailDetailPage({super.key, this.id, this.id1});

  final String? id;
  final String? id1;

  @override
  State<StatefulWidget> createState() {
    return _GoodDetailDetailState();
  }
}

class _GoodDetailDetailState extends State<GoodDetailDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("我是详情的详情"),
      ),
      body: Center(
        child: Text("${widget.id ?? "详情"} ${widget.id1 ?? "详情1"}"),
      ),
    );
  }
}
