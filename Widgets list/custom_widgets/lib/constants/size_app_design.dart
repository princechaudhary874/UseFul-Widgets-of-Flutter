import 'package:flutter/material.dart';

// Text Size Constants
const double kHeaderTextSize = 24.0; // For large headers (H1)
const double kSubHeaderTextSize = 20.0; // For subheaders (H2)
const double kBodyTextSize = 16.0; // For regular body text
const double kSmallTextSize = 14.0; // For smaller text, footnotes, or captions
const double kButtonTextSize = 18.0; // Button text size
const double kAppBarTitleSize = 22.0; // AppBar title text size

// AppBar Size Constants
const double kAppBarHeight = 56.0; // Default AppBar height

// Bottom Navigation Bar Item Size
const double kBottomNavigationBarItemSize = 24.0; // Icon size in bottom navigation bar

// Category Card Image Size
const double kCategoryCardImageSize = 120.0; // Size for category card images

// Padding and Margin Sizes
const double kDefaultPadding = 16.0; // Standard padding for containers or cards
const double kSmallPadding = 8.0; // Smaller padding for tight spaces
const double kLargePadding = 24.0; // Larger padding for spacious layouts

// Icon Sizes
const double kSmallIconSize = 20.0; // For smaller icons
const double kMediumIconSize = 24.0; // Standard icon size for buttons or app bar
const double kLargeIconSize = 30.0; // Larger icon size for prominent actions

// Button Sizes
const double kButtonHeight = 48.0; // Standard button height
const double kButtonWidth = 160.0; // Standard button width
const double kSmallButtonHeight = 40.0; // Smaller button height
const double kSmallButtonWidth = 140.0; // Smaller button width

// Card Sizes
const double kCardHeight = 180.0; // Height for standard cards
const double kCardWidth = 140.0; // Width for standard cards

// Avatar Sizes
const double kSmallAvatarSize = 40.0; // For small avatars or profile pictures
const double kLargeAvatarSize = 80.0; // For larger avatars or profile pictures

// Border Radius for Cards and Buttons
const double kCardBorderRadius = 12.0; // Border radius for cards
const double kButtonBorderRadius = 8.0; // Border radius for buttons




//based on the screen size
// const double kScreenWidth = MediaQuery.of(context).size.width;
// const double kScreenHeight = MediaQuery.of(context).size.height;

  // Responsive Text Sizes
  double responsiveHeaderTextSize(BuildContext context) => MediaQuery.of(context).size.width * 0.06;
  double responsiveSubHeaderTextSize(BuildContext context) => MediaQuery.of(context).size.width * 0.05;
  double responsiveBodyTextSize(BuildContext context) => MediaQuery.of(context).size.width * 0.045;
  double responsiveButtonTextSize(BuildContext context) => MediaQuery.of(context).size.width * 0.045;

  // Responsive AppBar Size
  double responsiveAppBarHeight(BuildContext context) => MediaQuery.of(context).size.height * 0.08;
  double responsiveAppBarTitleSize(BuildContext context) => MediaQuery.of(context).size.width * 0.05;

  // Responsive Card Sizes
  double responsiveCardHeight(BuildContext context) => MediaQuery.of(context).size.height * 0.25;
  double responsiveCardWidth(BuildContext context) => MediaQuery.of(context).size.width * 0.4;

  // Responsive Padding Sizes
  double responsiveDefaultPadding(BuildContext context) => MediaQuery.of(context).size.width * 0.04;

  // Responsive Button Sizes
  double responsiveButtonHeight(BuildContext context) => MediaQuery.of(context).size.height * 0.06;
  double responsiveButtonWidth(BuildContext context) => MediaQuery.of(context).size.width * 0.4;

  // Responsive Icon Sizes
  double responsiveLargeIconSize(BuildContext context) => MediaQuery.of(context).size.width * 0.08;

  // Bottom Navigation Bar Item Size
  double responsiveBottomNavigationBarItemSize(BuildContext context) => MediaQuery.of(context).size.width * 0.06;

  // Category Card Image Size
  double responsiveCategoryCardImageSize(BuildContext context) => MediaQuery.of(context).size.width * 0.3;