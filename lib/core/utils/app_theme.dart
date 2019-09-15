import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


/// Application themes, typography etc

final overlayColor = const Color(0xff000000).withAlpha(150);

ThemeData themeData = ThemeData(
    primaryColor: Color(hexColor('ffffff')),
    primaryColorLight: Color(hexColor('F2F2F2')),
    primaryColorDark: Color(hexColor('808080')),
    appBarTheme: AppBarTheme(color: Color(hexColor('F6F6F6'))),
    accentColor: Color(hexColor('006cff')),
    buttonColor: Color(hexColor('F6F6F6')),
    splashColor: Color(hexColor('F2F2F2')),
    scaffoldBackgroundColor: Color(hexColor('FFFFFF')),
    disabledColor: Color(hexColor('006cff')).withOpacity(0.7),
    highlightColor: Color(hexColor('F2F2F2')),
    dividerColor: Color(hexColor('F6F6F6')),
   // hintColor: Color(hexColor('b3b3b3')),
   // cursorColor: Color(hexColor('312914')),
    fontFamily: 'GTEesti',
     textTheme: TextTheme(
       body1: TextStyle(fontSize: 16, color: Color(hexColor('000000'))),
       body2: TextStyle(fontSize: 14, color: Color(hexColor('000000')), fontWeight: FontWeight.normal),
    //   caption: TextStyle(fontSize: 14, color: Color(hexColor('000000'))),
         display1: TextStyle(fontSize: 18, color: Color(hexColor('ffffff'))),
         display2: TextStyle(fontSize: 20, color: Color(hexColor('808080'))),
    //   display3: TextStyle(fontSize: 26, color: Color(hexColor('000000'))),
    //   display4: TextStyle(fontSize: 36, color: Color(hexColor('000000'))),
         overline: TextStyle(fontSize: 12, color: Color(hexColor('808080'))),
         button: TextStyle(fontSize: 18, color: Color(hexColor('ffffff')), fontWeight: FontWeight.normal),
    //   headline:  TextStyle(fontSize: 16, color: Color(hexColor('000000')), fontWeight: FontWeight.bold),
    //   overline:  TextStyle(fontSize: 10, color: Color(hexColor('000000'))),
     //    subhead:  TextStyle(fontSize: 14, color: Color(hexColor('000000'))),
     //  subtitle:  TextStyle(fontSize: 12, color: Color(hexColor('000000')), fontWeight: FontWeight.bold),
     //  title:  TextStyle(fontSize: 16, color: Color(hexColor('000000'))),
         
    // )
)
);


hexColor(String hexCode){
  String colorst = '0xff' + hexCode.replaceAll('#', '');
  int color = int.parse(colorst);
  return color;
}