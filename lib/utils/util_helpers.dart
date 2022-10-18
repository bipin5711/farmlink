import 'package:farmlink/models/bottom_navigation.dart';
import 'package:farmlink/utils/util_images.dart';

List<BottomNavigation> bottomNavigationData = [
  BottomNavigation(
    index: 0,
    activeImage: favActive,
    inactiveImage: favInactive,
  ),
  BottomNavigation(
    index: 1,
    activeImage: messageActive,
    inactiveImage: messageInactive,
  ),
  BottomNavigation(
    index: 2,
    activeImage: homeActive,
    inactiveImage: homeInactive,
  ),
  BottomNavigation(
    index: 3,
    activeImage: cartActive,
    inactiveImage: cartInactive,
  ),
  BottomNavigation(
    index: 3,
    activeImage: profileActive,
    inactiveImage: profileInactive,
  ),
];

List homeData = [
  {
    'name': '8960234',
    'city': 'Santa Monica, CA',
    'rating': '3',
    'image': house,
    'distance': '7.3 mi',
    'types': [cow, pig, hen, goat]
  },
  {
    'name': '8960234',
    'city': 'Santa Monica, CA',
    'rating': '4',
    'image': house,
    'distance': '7.3 mi',
    'types': [deer, pig, sheep]
  },
  {
    'name': '8960234',
    'city': 'Santa Monica, CA',
    'rating': '3',
    'image': house,
    'distance': '7.3 mi',
    'types': [cow, pig, hen, goat]
  },
  {
    'name': '8960234',
    'city': 'Santa Monica, CA',
    'rating': '5',
    'image': house,
    'distance': '7.3 mi',
    'types': [cow, deer, hen]
  },
  {
    'name': '8960234',
    'city': 'Santa Monica, CA',
    'rating': '3',
    'image': house,
    'distance': '7.3 mi',
    'types': [sheep, pig, duck]
  },
];
