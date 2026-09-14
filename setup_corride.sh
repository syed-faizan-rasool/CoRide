#!/bin/bash
# CoRide - Flutter Ride-Sharing App
# Folder structure scaffold script (GetX state management)
#
# Usage:
#   1. Place this file in the root of your Flutter project (D:\rideApp\CoRide)
#   2. Run:  bash setup_corride.sh
#   3. It will create all folders + empty starter files under lib/

set -e

echo "Setting up CoRide folder structure..."

# ---------- lib/core ----------
mkdir -p lib/core/constants
mkdir -p lib/core/theme
mkdir -p lib/core/utils
mkdir -p lib/core/network
mkdir -p lib/core/widgets
mkdir -p lib/core/errors
mkdir -p lib/core/bindings

touch lib/core/constants/app_colors.dart
touch lib/core/constants/app_strings.dart
touch lib/core/constants/api_endpoints.dart
touch lib/core/theme/app_theme.dart
touch lib/core/utils/validators.dart
touch lib/core/utils/date_formatter.dart
touch lib/core/utils/distance_calculator.dart
touch lib/core/network/api_client.dart
touch lib/core/network/api_interceptor.dart
touch lib/core/network/network_exceptions.dart
touch lib/core/widgets/custom_button.dart
touch lib/core/widgets/custom_textfield.dart
touch lib/core/widgets/loading_indicator.dart
touch lib/core/widgets/rating_stars.dart
touch lib/core/errors/failure.dart
touch lib/core/bindings/initial_binding.dart

# ---------- lib/features/auth ----------
mkdir -p lib/features/auth/data/models
mkdir -p lib/features/auth/data/repositories
mkdir -p lib/features/auth/domain/entities
mkdir -p lib/features/auth/presentation/screens
mkdir -p lib/features/auth/presentation/widgets
mkdir -p lib/features/auth/presentation/controllers
mkdir -p lib/features/auth/presentation/bindings

touch lib/features/auth/data/models/user_model.dart
touch lib/features/auth/data/repositories/auth_repository.dart
touch lib/features/auth/domain/entities/user_entity.dart
touch lib/features/auth/presentation/screens/login_screen.dart
touch lib/features/auth/presentation/screens/signup_screen.dart
touch lib/features/auth/presentation/screens/otp_verify_screen.dart
touch lib/features/auth/presentation/controllers/auth_controller.dart
touch lib/features/auth/presentation/bindings/auth_binding.dart

# ---------- lib/features/onboarding ----------
mkdir -p lib/features/onboarding/presentation/screens
touch lib/features/onboarding/presentation/screens/onboarding_screen.dart

# ---------- lib/features/home ----------
mkdir -p lib/features/home/presentation/screens
mkdir -p lib/features/home/presentation/widgets
mkdir -p lib/features/home/presentation/controllers
mkdir -p lib/features/home/presentation/bindings

touch lib/features/home/presentation/screens/home_screen.dart
touch lib/features/home/presentation/controllers/home_controller.dart
touch lib/features/home/presentation/bindings/home_binding.dart

# ---------- lib/features/ride_booking (rider side) ----------
mkdir -p lib/features/ride_booking/data/models
mkdir -p lib/features/ride_booking/data/repositories
mkdir -p lib/features/ride_booking/presentation/screens
mkdir -p lib/features/ride_booking/presentation/widgets
mkdir -p lib/features/ride_booking/presentation/controllers
mkdir -p lib/features/ride_booking/presentation/bindings

touch lib/features/ride_booking/data/models/ride_request_model.dart
touch lib/features/ride_booking/data/repositories/ride_repository.dart
touch lib/features/ride_booking/presentation/screens/set_destination_screen.dart
touch lib/features/ride_booking/presentation/screens/choose_ride_screen.dart
touch lib/features/ride_booking/presentation/screens/ride_tracking_screen.dart
touch lib/features/ride_booking/presentation/controllers/ride_booking_controller.dart
touch lib/features/ride_booking/presentation/bindings/ride_booking_binding.dart

# ---------- lib/features/ride_offer (driver side) ----------
mkdir -p lib/features/ride_offer/data/models
mkdir -p lib/features/ride_offer/presentation/screens
mkdir -p lib/features/ride_offer/presentation/controllers
mkdir -p lib/features/ride_offer/presentation/bindings

touch lib/features/ride_offer/data/models/ride_offer_model.dart
touch lib/features/ride_offer/presentation/screens/offer_ride_screen.dart
touch lib/features/ride_offer/presentation/screens/incoming_requests_screen.dart
touch lib/features/ride_offer/presentation/controllers/ride_offer_controller.dart
touch lib/features/ride_offer/presentation/bindings/ride_offer_binding.dart

# ---------- lib/features/ride_matching ----------
mkdir -p lib/features/ride_matching/data/repositories
mkdir -p lib/features/ride_matching/domain/usecases

touch lib/features/ride_matching/data/repositories/matching_repository.dart
touch lib/features/ride_matching/domain/usecases/match_riders_usecase.dart

# ---------- lib/features/map ----------
mkdir -p lib/features/map/data/services
mkdir -p lib/features/map/presentation/widgets
mkdir -p lib/features/map/presentation/controllers

touch lib/features/map/data/services/location_service.dart
touch lib/features/map/data/services/directions_service.dart
touch lib/features/map/presentation/widgets/live_map_widget.dart
touch lib/features/map/presentation/controllers/map_controller.dart

# ---------- lib/features/payments ----------
mkdir -p lib/features/payments/data/models
mkdir -p lib/features/payments/data/repositories
mkdir -p lib/features/payments/presentation/screens
mkdir -p lib/features/payments/presentation/controllers
mkdir -p lib/features/payments/presentation/bindings

touch lib/features/payments/data/models/payment_model.dart
touch lib/features/payments/data/repositories/payment_repository.dart
touch lib/features/payments/presentation/screens/payment_method_screen.dart
touch lib/features/payments/presentation/screens/fare_split_screen.dart
touch lib/features/payments/presentation/controllers/payment_controller.dart
touch lib/features/payments/presentation/bindings/payment_binding.dart

# ---------- lib/features/chat ----------
mkdir -p lib/features/chat/data/models
mkdir -p lib/features/chat/presentation/screens
mkdir -p lib/features/chat/presentation/controllers

touch lib/features/chat/data/models/message_model.dart
touch lib/features/chat/presentation/screens/chat_screen.dart
touch lib/features/chat/presentation/controllers/chat_controller.dart

# ---------- lib/features/ratings ----------
mkdir -p lib/features/ratings/presentation/screens
mkdir -p lib/features/ratings/presentation/controllers

touch lib/features/ratings/presentation/screens/rate_ride_screen.dart
touch lib/features/ratings/presentation/controllers/rating_controller.dart

# ---------- lib/features/ride_history ----------
mkdir -p lib/features/ride_history/presentation/screens
mkdir -p lib/features/ride_history/presentation/controllers

touch lib/features/ride_history/presentation/screens/ride_history_screen.dart
touch lib/features/ride_history/presentation/controllers/ride_history_controller.dart

# ---------- lib/features/notifications ----------
mkdir -p lib/features/notifications/data/services
mkdir -p lib/features/notifications/presentation/screens
mkdir -p lib/features/notifications/presentation/controllers

touch lib/features/notifications/data/services/push_notification_service.dart
touch lib/features/notifications/presentation/screens/notifications_screen.dart
touch lib/features/notifications/presentation/controllers/notification_controller.dart

# ---------- lib/features/profile ----------
mkdir -p lib/features/profile/presentation/screens
mkdir -p lib/features/profile/presentation/controllers
mkdir -p lib/features/profile/presentation/bindings

touch lib/features/profile/presentation/screens/profile_screen.dart
touch lib/features/profile/presentation/screens/edit_profile_screen.dart
touch lib/features/profile/presentation/controllers/profile_controller.dart
touch lib/features/profile/presentation/bindings/profile_binding.dart

# ---------- lib/routes (GetX routing) ----------
mkdir -p lib/routes
touch lib/routes/app_routes.dart
touch lib/routes/app_pages.dart

# ---------- lib/config ----------
mkdir -p lib/config
touch lib/config/env.dart
touch lib/config/app_config.dart

# ---------- root-level lib files ----------
touch lib/app.dart
# lib/main.dart is created automatically by "flutter create" — left untouched

# ---------- assets ----------
mkdir -p assets/images
mkdir -p assets/icons
mkdir -p assets/fonts

# ---------- test ----------
mkdir -p test/features/auth
mkdir -p test/core
touch test/features/auth/auth_controller_test.dart

echo ""
echo "✅ CoRide folder structure created successfully!"
echo ""
echo "Next steps:"
echo "  1. Add GetX to pubspec.yaml:  flutter pub add get"
echo "  2. Wrap your root widget with GetMaterialApp in lib/app.dart"
echo "  3. Register routes in lib/routes/app_pages.dart"
echo "  4. Start building out auth_controller.dart as your first feature"
