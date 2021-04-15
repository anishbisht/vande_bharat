import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:moblie_ui/Binding/onboarding_binding.dart';

class MainscreenController extends GetxController {
  final _selectedIndex = 0.obs;
  get selectedIndex => this._selectedIndex.value;
  set selectedIndex(index) => this._selectedIndex.value = index;
}
