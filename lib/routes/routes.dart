import 'package:flutter/material.dart';
import 'package:challenge_3_homework/pages/alert_page.dart';
import 'package:challenge_3_homework/pages/animated_container.dart';
import 'package:challenge_3_homework/pages/avatar_page.dart';
import 'package:challenge_3_homework/pages/card_page.dart';
import 'package:challenge_3_homework/pages/home_page.dart';
import 'package:challenge_3_homework/pages/input_page.dart';


Map<String, WidgetBuilder> getApplicationRoutes() {

  return <String, WidgetBuilder> {
      '/'      : ( BuildContext context ) => HomePage(),
      'alert'  : ( BuildContext context ) => AlertPage(),
      AvatarPage.pageName : ( BuildContext context ) => AvatarPage(),
      'card'   : ( BuildContext context ) => CardPage(),
      'animatedContainer'   : ( BuildContext context ) => AnimatedContainerPage(),
      'inputs' : ( BuildContext context ) => InputPage(),

  };

}
