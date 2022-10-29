import 'package:farmlink/models/bottom_navigation.dart';
import 'package:farmlink/utils/util_constants.dart';
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
    'rating': 3,
    'image': house,
    'distance': '7.3 mi',
    'types': [cow, pig, hen, sheep]
  },
  {
    'name': '8960234',
    'city': 'Santa Monica, CA',
    'rating': 4,
    'image': house,
    'distance': '7.3 mi',
    'types': [deer, pig, sheep]
  },
  {
    'name': '8960234',
    'city': 'Santa Monica, CA',
    'rating': 3,
    'image': house,
    'distance': '7.3 mi',
    'types': [cow, pig, hen]
  },
  {
    'name': '8960234',
    'city': 'Santa Monica, CA',
    'rating': 5,
    'image': house,
    'distance': '7.3 mi',
    'types': [cow, deer, hen]
  },
  {
    'name': '8960234',
    'city': 'Santa Monica, CA',
    'rating': 3,
    'image': house,
    'distance': '7.3 mi',
    'types': [sheep, pig, duck]
  },
];

List filterData = [
  strLivestock,
  strTypeMeat,
  strDairy,
  strProduce,
  strMiscellaneous,
];

List paymentOptions = [
  {'name': strCash, 'image': cash},
  {'name': strZelle, 'image': zelle},
  {'name': strCheck, 'image': cheque},
  {'name': strBankTransfer, 'image': bankTransfer},
  {'name': strCrypto, 'image': crypto},
  {'name': strCreditCard, 'image': creditcard},
];

List inventoryList = [
  {'name': strBeef, 'image': beefInventory},
  {'name': strPork, 'image': porkInventory},
  {'name': strGoat, 'image': goatInventory},
  {'name': strSheep, 'image': sheepInventory},
  {'name': strPoultry, 'image': poultryInventory},
  {'name': strFowl, 'image': fowlInventory},
  {'name': strRabbit, 'image': rabbitInventory},
  {'name': strWildExotic, 'image': wildInventory},
];

List messagesList = [strLiketoPurchase, strYourTotal];
