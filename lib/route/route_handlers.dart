import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shop_cc/pages/good_detail_detail_page.dart';
import '../pages/good_detail_page.dart';

var goodDetailHandler = Handler(handlerFunc:
    (BuildContext? buildContext, Map<String, List<String>> params) {
  final args = params['id']?.first;
  return GoodDetailPage(id: args);
});

var goodDetailDetailHandler = Handler(handlerFunc: (buildContext, params) {
  final args1 = params['id']?.first;
  final args2 = params['id1']?.first;
  return GoodDetailDetailPage(
    id: args1,
    id1: args2,
  );
});
