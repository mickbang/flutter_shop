
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'route_handlers.dart';
import '../pages/not_fund_page.dart';

class Routes{
  static const String detail = "/detail";
  static const String detail_detail = "/detail/down";

  static void configRoutes(FluroRouter router){
    router.notFoundHandler  = Handler(handlerFunc: (BuildContext? context,Map<String,List<String>> params){
       return const NotFundPage();
    });
    router.define(detail, handler: goodDetailHandler);

    router.define(detail_detail, handler: goodDetailDetailHandler);
  }
}