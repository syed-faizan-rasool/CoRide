import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RideOption {
  final String id;
  final String title;
  final String subtitle;
  final String price;
  final IconData icon;
  final String? badge;

  RideOption({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.icon,
    this.badge,
  });
}

class PromoItem {
  final String title;
  final String subtitle;
  final IconData icon;

  PromoItem({
    required this.title,
    required this.subtitle,
    required this.icon,
  });
}

class HomeController extends GetxController {
  final isDriverMode = false.obs;
  final walletBalance = 1250.0.obs;
  final nearbyDrivers = 3.obs;
  final currentPromoPage = 0.obs;
  final selectedRideIndex = 0.obs;

  final savedPlaces = <String>['Home', 'Work'];

  final List<RideOption> rideOptions = [
    RideOption(
      id: 'economy',
      title: 'Economy',
      subtitle: '2 min away',
      price: 'Rs 250',
      icon: Icons.directions_car_rounded,
      badge: 'Popular',
    ),
    RideOption(
      id: 'carpool',
      title: 'Carpool',
      subtitle: '5 min away',
      price: 'Rs 150',
      icon: Icons.groups_rounded,
      badge: 'Save 30%',
    ),
    RideOption(
      id: 'premium',
      title: 'Premium',
      subtitle: '3 min away',
      price: 'Rs 450',
      icon: Icons.workspace_premium_rounded,
      badge: null,
    ),
  ];

  final List<PromoItem> promos = [
    PromoItem(
      title: '20% off your next ride',
      subtitle: 'Use code CORIDE20 at checkout',
      icon: Icons.local_offer_rounded,
    ),
    PromoItem(
      title: 'Invite friends, earn Rs 100',
      subtitle: 'Share your referral code today',
      icon: Icons.card_giftcard_rounded,
    ),
    PromoItem(
      title: 'Ride safe, ride verified',
      subtitle: 'All drivers background-checked',
      icon: Icons.verified_user_rounded,
    ),
  ];

  void toggleMode() {
    isDriverMode.value = !isDriverMode.value;
  }

  void selectRide(int index) {
    selectedRideIndex.value = index;
  }

  void onPromoPageChanged(int index) {
    currentPromoPage.value = index;
  }
}