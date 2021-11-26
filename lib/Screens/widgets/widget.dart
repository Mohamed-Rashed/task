import 'package:circle_bottom_navigation_bar/widgets/tab_data.dart';
import 'package:flutter/material.dart';

List<TabData> getTabsData() {
  const _kFontFam = 'MyFlutterApp';
  const _kHomeFont = 'HomeFont';
  const _kpinfont = 'PinFont';
  const _kHeartFont = 'HeartFont';
  const _kWalletFont = 'WalletFont';
  const String? _kFontPkg = null;

  return [
    TabData(
      icon: IconData(0xe800, fontFamily: _kHomeFont, fontPackage: _kFontPkg),
      iconSize: 25.0,
      title: '',
      fontSize: 12,
      fontWeight: FontWeight.bold,
    ),
    TabData(
      icon: IconData(0xe800, fontFamily: _kpinfont, fontPackage: _kFontPkg),
      iconSize: 25,
      title: '',
      fontSize: 12,
      fontWeight: FontWeight.bold,
    ),
    TabData(
      icon: IconData(0xe800, fontFamily: _kFontFam, fontPackage: _kFontPkg),
      iconSize: 25,
      title: '',
      fontSize: 12,
      fontWeight: FontWeight.bold,
    ),
    TabData(
      icon: IconData(0xe800, fontFamily: _kHeartFont, fontPackage: _kFontPkg),
      iconSize: 25,
      title: '',
      fontSize: 12,
      fontWeight: FontWeight.bold,
    ),
    TabData(
      icon: IconData(0xe800, fontFamily: _kWalletFont, fontPackage: _kFontPkg),
      iconSize: 25,
      title: '',
      fontSize: 12,
      fontWeight: FontWeight.bold,
    ),
  ];
}
