import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app.dart';
import 'features/auth/presentation/controllers/auth_controller.dart';

void main() {
  Get.put(AuthController(), permanent: true);
  runApp(const CoRideApp());
}