import 'dart:ffi';

import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_shop_cc/config/string.dart';
import '../config/index.dart';
import '../route/application.dart';
import '../route/route.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<HomePage> with KeepAliveParentDataMixin {
  @override
  bool get keptAlive => true;

  @override
  void detach() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(QString.homeTitle),
      ),
      body: ListView(
        children: [
          TopNavigator(),
          GoodsRecommend(),
          AdsUI(),
          RecommendFloor(),
          HotArea()
        ],
      ),
    );
  }
}

//火爆专区
class HotArea extends StatelessWidget {
  final hotGoods = [
    {
      "image": "images/floor1.png",
      "title": "法国代购江疏影同款巴拉巴拉巴拉巴拉扒拉法国代购江疏影同款巴拉巴拉巴拉巴拉扒拉法国代购江疏影同款巴拉巴拉巴拉巴拉扒拉",
      "price_current": "100.0",
      "price_before": "120.0"
    },
    {
      "image": "images/floor1.png",
      "title": "法国代购江疏影同款巴拉巴拉巴拉巴拉扒拉法国代购江疏影同款巴拉巴拉巴拉巴拉扒拉法国代购江疏影同款巴拉巴拉巴拉巴拉扒拉",
      "price_current": "100.0",
      "price_before": "120.0"
    },
    {
      "image": "images/floor1.png",
      "title": "法国代购江疏影同款巴拉巴拉巴拉巴拉扒拉法国代购江疏影同款巴拉巴拉巴拉巴拉扒拉法国代购江疏影同款巴拉巴拉巴拉巴拉扒拉",
      "price_current": "100.0",
      "price_before": "120.0"
    },
    {
      "image": "images/floor1.png",
      "title": "法国代购江疏影同款巴拉巴拉巴拉巴拉扒拉法国代购江疏影同款巴拉巴拉巴拉巴拉扒拉法国代购江疏影同款巴拉巴拉巴拉巴拉扒拉",
      "price_current": "100.0",
      "price_before": "120.0"
    },
    {
      "image": "images/floor1.png",
      "title": "法国代购江疏影同款巴拉巴拉巴拉巴拉扒拉法国代购江疏影同款巴拉巴拉巴拉巴拉扒拉法国代购江疏影同款巴拉巴拉巴拉巴拉扒拉",
      "price_current": "100.0",
      "price_before": "120.0"
    },
    {
      "image": "images/floor1.png",
      "title": "法国代购江疏影同款巴拉巴拉巴拉巴拉扒拉法国代购江疏影同款巴拉巴拉巴拉巴拉扒拉法国代购江疏影同款巴拉巴拉巴拉巴拉扒拉",
      "price_current": "100.0",
      "price_before": "120.0"
    },
    {
      "image": "images/floor1.png",
      "title": "法国代购江疏影同款巴拉巴拉巴拉巴拉扒拉法国代购江疏影同款巴拉巴拉巴拉巴拉扒拉法国代购江疏影同款巴拉巴拉巴拉巴拉扒拉",
      "price_current": "100.0",
      "price_before": "120.0"
    },
    {
      "image": "images/floor1.png",
      "title": "法国代购江疏影同款巴拉巴拉巴拉巴拉扒拉法国代购江疏影同款巴拉巴拉巴拉巴拉扒拉法国代购江疏影同款巴拉巴拉巴拉巴拉扒拉",
      "price_current": "100.0",
      "price_before": "120.0"
    },
  ];

  HotArea({super.key}) {
    for (int i = 0; i < 100; i++) {
      hotGoods.add({
        "image": "images/floor1.png",
        "title": "法国代购江疏影同款巴拉巴拉巴拉巴拉扒拉法国代购江疏影同款巴拉巴拉巴拉巴拉扒拉法国代购江疏影同款巴拉巴拉巴拉巴拉扒拉",
        "price_current": "100.0",
        "price_before": "120.0"
      });
    }
  }

  Widget _hotTitle(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey, width: 0.5))),
      child: const Text(
        "火爆专区",
        style: TextStyle(color: Colors.orange),
      ),
    );
  }

  Widget _hotItem(BuildContext context, item) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 195,
        padding: EdgeInsets.all(3),
        child: Column(
          children: [
            Image.asset(
              item["image"],
              width: 180,
              height: 180,
              fit: BoxFit.cover,
            ),
            Text(
              item["title"],
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Row(
              children: [
                Text(
                  item["price_current"],
                  style: const TextStyle(color: Colors.red),
                ),
                Text(
                  item["price_before"],
                  style: const TextStyle(
                      color: Colors.grey,
                      decoration: TextDecoration.lineThrough,
                      decorationThickness: 1.5,
                      decorationColor: Colors.grey),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _wapList(BuildContext context) {
    List<Widget> childrenList = hotGoods.map((item) {
      return _hotItem(context, item);
    }).toList();

    return Wrap(
      spacing: 2,
      children: childrenList,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [_hotTitle(context), _wapList(context)],
      ),
    );
  }
}

//推荐活动
class RecommendFloor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          //左侧
          Expanded(
              child: Column(
            children: [
              Container(
                height: 200,
                child: InkWell(
                  onTap: () {},
                  child: Image.asset(
                    "images/floor1.png",
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Container(
                height: 100,
                child: InkWell(
                  onTap: () {},
                  child: Image.asset(
                    "images/floor2.png",
                    fit: BoxFit.contain,
                  ),
                ),
              )
            ],
          )),
          //右侧
          Expanded(
              child: Column(
            children: [
              Container(
                height: 100,
                child: InkWell(
                  onTap: () {},
                  child: Image.asset(
                    "images/floor3.png",
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Container(
                height: 100,
                child: InkWell(
                  onTap: () {},
                  child: Image.asset(
                    "images/floor4.png",
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Container(
                height: 100,
                child: InkWell(
                  onTap: () {},
                  child: Image.asset(
                    "images/floor5.png",
                    fit: BoxFit.contain,
                  ),
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}

//广告
class AdsUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: InkWell(
        onTap: () {
          Application.router?.navigateTo(
              context, "${Routes.detail}?id=${Uri.encodeComponent("123456我是传进来的参数")}",
              transition: TransitionType.inFromBottom);
        },
        child: Image.asset("images/ad02.png"),
      ),
    );
  }
}

class TopNavigator extends StatelessWidget {
  final navigators = [
    {"title": "毛衣", "image": "images/1.png"},
    {"title": "西服", "image": "images/2.png"},
    {"title": "皮衣", "image": "images/3.png"},
    {"title": "连衣裙", "image": "images/4.png"},
    {"title": "牛仔裤", "image": "images/5.png"},
    {"title": "T恤", "image": "images/6.png"},
    {"title": "运动装", "image": "images/7.png"},
    {"title": "短裙", "image": "images/8.png"},
    {"title": "礼服", "image": "images/9.png"},
    {"title": "风衣", "image": "images/10.png"},
  ];

  Widget _GridItemView(BuildContext context, item, index) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          Image.asset(item["image"], width: 45, height: 45),
          Text(item["title"])
        ],
      ),
    );
  }

  var tempIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(3.0),
      margin: const EdgeInsets.only(top: 5.0),
      height: 150,
      child: GridView.count(
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: 5,
        children: navigators.map((item) {
          tempIndex++;
          return _GridItemView(context, item, tempIndex);
        }).toList(),
      ),
    );
  }
}

class GoodsRecommend extends StatelessWidget {
  final recommendGoods = [
    {
      "image": "images/goods.jpg",
      "price_before": "100.0",
      "price_current": "88.8"
    },
    {
      "image": "images/goods.jpg",
      "price_before": "100.0",
      "price_current": "88.8"
    },
    {
      "image": "images/goods.jpg",
      "price_before": "100.0",
      "price_current": "88.8"
    },
    {
      "image": "images/goods.jpg",
      "price_before": "100.0",
      "price_current": "88.8"
    },
    {
      "image": "images/goods.jpg",
      "price_before": "100.0",
      "price_current": "88.8"
    },
    {
      "image": "images/goods.jpg",
      "price_before": "100.0",
      "price_current": "88.8"
    },
  ];

  Widget _goodTitle(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.fromLTRB(10.0, 2.0, 0, 5.0),
      margin: const EdgeInsets.only(top: 10),
      decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(bottom: BorderSide(width: 0.5, color: Colors.grey))),
      child: const Text("商品推荐"),
    );
  }

  Widget _goodItem(BuildContext context, item, index) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.fromLTRB(5.0, 20.0, 5.0, 5.0),
      decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(
              left: BorderSide(width: 0.5, color: Colors.grey),
              bottom: BorderSide(width: 0.5, color: Colors.grey))),
      child: Column(
        children: [
          Expanded(
              child: Image.asset(
            item["image"],
            width: 130,
          )),
          Text(
            "￥${item["price_current"]}",
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.red),
          ),
          Text(
            "￥${item["price_before"]}",
            textAlign: TextAlign.center,
            style: const TextStyle(
                color: Colors.grey,
                decoration: TextDecoration.lineThrough,
                decorationColor: Colors.grey,
                decorationThickness: 1.5),
          ),
        ],
      ),
    );
  }

  var tempIndex = -1;

  Widget _recommendGoodsUI(BuildContext context) {
    return Container(
        color: Colors.white,
        height: 180,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: recommendGoods.length,
            itemBuilder: (context, index) {
              return _goodItem(context, recommendGoods[index], index);
            }));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [_goodTitle(context), _recommendGoodsUI(context)],
      ),
    );
  }
}
