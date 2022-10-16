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
