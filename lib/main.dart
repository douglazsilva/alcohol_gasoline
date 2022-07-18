import 'package:alcohol_gasoline/ui/android/my_material_app.dart';
import 'package:alcohol_gasoline/ui/ios/my_cupertino_app.dart';
import 'package:flutter/material.dart';

import 'dart:io' show Platform;

void main() => Platform.isIOS
    ? runApp(const MyCupertinoApp())
    : runApp(const MyMaterialApp());
