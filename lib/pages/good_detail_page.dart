import 'package:flutter/material.dart';
import 'package:flutter_shop_cc/route/application.dart';
import 'package:flutter_shop_cc/route/route.dart';

class GoodDetailPage extends StatefulWidget {
  GoodDetailPage({super.key, this.id});

  final String? id;

  @override
  State<StatefulWidget> createState() {
    return _GoodDetailState();
  }
}

class _GoodDetailState extends State<GoodDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("我是详情"),
      ),
      body: InkWell(
        onTap: () {
          Application.router?.navigateTo(context,
              "${Routes.detail_detail}?id=${Uri.encodeComponent(widget.id??"")}&id1=${Uri.encodeComponent("我是第二个参数")}");
        },
        child: Center(
          child: Text(widget.id ?? "详情"),
        ),
      ),
    );
  }
}
