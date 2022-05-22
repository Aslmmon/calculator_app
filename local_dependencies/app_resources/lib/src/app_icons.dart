import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:math' as math; // import this

class SvgIcon extends StatelessWidget {
  final AppIcon icon;
  final Color? color;
  final double? width;
  final double? height;
  final String? semanticsLabel;
  final bool avoidRotation;

  const SvgIcon(
    this.icon, {
    Key? key,
    this.color,
    this.width,
    this.avoidRotation = false,
    this.height,
    this.semanticsLabel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform(
      alignment: Alignment.center,
      transform: Matrix4.rotationY(avoidRotation ? math.pi * 2 : math.pi),
      child: SvgPicture.asset('assets/icons/${icon.name}.svg',
          package: 'app_resources',
          semanticsLabel: semanticsLabel,
          color: color,
          matchTextDirection: true,
          width: width ?? 24,
          height: height ?? 24),
    );
  }
}

class AppIcon {
  final String name;

  const AppIcon(this.name);
}

class AppIcons {
  const AppIcons._();

  /// icons in different sizes and could be colored.
  static const connectWithHoods = AppIcon('connect_with_hoods');
  static const createStores = AppIcon('create_stores');
  static const getPaid = AppIcon('get_paid');
  static const sealmesStoreIcon = AppIcon('seamless_store');
  static const mastercard = AppIcon('mastercard');
  static const promoteIcon = AppIcon("promote_icon");

  /// social media icons
  static const facebookIcon = AppIcon("facebook_icon");
  static const appleIcon = AppIcon("apple_icon");
  static const googleIcon = AppIcon("google_icon");

  /// icons in a normal size 24x24
  static const clipboardFilled = AppIcon('clipboard_filled');
  static const clipboardOutline = AppIcon('clipboard_outline');
  static const notificationsFilled = AppIcon('notifications_filled');
  static const notificationsOutline = AppIcon('notifications_outline');
  static const priceTagsFilled = AppIcon('pricetags_filled');
  static const priceTagsOutline = AppIcon('pricetags_outline');
  static const showsFilled = AppIcon('shows_filled');
  static const showsOutline = AppIcon('shows_outline');
  static const bagHandleFilled = AppIcon('bag_handle_filled');
  static const chatBubbleOutline = AppIcon('chat_bubble_outline');
  static const ellipsisOutline = AppIcon('ellipsis_outline');
  static const heartFilled = AppIcon('heart_filled');
  static const heartOutline = AppIcon('heart_outline');
  static const shareOutline = AppIcon('share_outline');
  static const storeFrontOutline = AppIcon('store_front_outline');
  static const eyeFilled = AppIcon('eye_filled');
  static const eyeOutline = AppIcon("eye_outline");
  static const micOutline = AppIcon("mic_outline");
  static const videoCamOutline = AppIcon("video_cam_outline");
  static const videoOutline = AppIcon("video_outline");
  static const calendarClearOutline = AppIcon('calendar_clear_outline');
  static const chevronUp = AppIcon('chevron_up');
  static const chevronDown = AppIcon('chevron_down');
  static const chevronLeft = AppIcon('chevron_left_home');
  static const chevronRight = AppIcon('chevron_right');
  static const arrowRightFilled = AppIcon('arrow_right_filled');
  static const locationOutline = AppIcon('location_outline');
  static const timeOutline = AppIcon('time_outline');
  static const ticketOutline = AppIcon('ticket_outline');
  static const homeSearchFilled = AppIcon('home_search_filled');
  static const homeSearchOutline = AppIcon('home_search_outline');
  static const searchFilled = AppIcon('search_filled');
  static const bagFilled = AppIcon('bag_filled');
  static const bagOutline = AppIcon('bag_outline');
  static const cameraAdd = AppIcon('camera_add');
  static const plusCircleFilled = AppIcon('plus_circle_filled');
  static const plusCircleOutline = AppIcon('plus_circle_outline');
  static const personFilled = AppIcon('person_filled');
  static const personOutline = AppIcon('person_outline');
  static const chatOutline = AppIcon("chat_outline");
  static const textLeft = AppIcon("text_left");
  static const arrowRepeat = AppIcon("arrow_repeat");
  static const radioOutline = AppIcon("radio_outline");
  static const playOutline = AppIcon("play_outline");
  static const calendarOutline = AppIcon("calendar_outline");
  static const bookmarkOutline = AppIcon("bookmark_outline");
  static const deleteOutline = AppIcon("delete_outline");
  static const archiveOutline = AppIcon("archive_outline");
  static const pencilOutline = AppIcon("pencil_outline");
  static const closeFilled = AppIcon("close_filled");
  static const calendarPlus = AppIcon("calendar_plus");
  static const micOffOutline = AppIcon("mic_off");
  static const videoCamOffOutline = AppIcon("videocam_off_outline");
  static const add = AppIcon('add');
  static const remove = AppIcon('remove');
  static const checkMark = AppIcon('check_mark');
  static const chevronForward = AppIcon('forward_arrow');
  static const cameraFilled = AppIcon('camera_filled');
  static const caretDown = AppIcon('toggle_dropdown');
  static const questionCircle = AppIcon('question_circle');
  static const arrowUpDown = AppIcon('arrow_up_down');
  static const filterOutline = AppIcon('filter_outline');
  static const product = AppIcon('product');
  static const giftFilled = AppIcon('gift_filled');
  static const x = AppIcon('x');
  static const receiptOutline = AppIcon('receipt_outline');
  static const returnIcon = AppIcon('return');
  static const pencil = AppIcon('pencil');
  static const checkmarkCircle = AppIcon('checkmark_circle');
  static const checkmarkCircleOutline = AppIcon('checkmark_outline');

  static const cash = AppIcon('cash');
  static const moveToWishlist = AppIcon('move_to_wishlist');
  static const radioButtonOff = AppIcon('radio_button_off');
  static const radioButtonOn = AppIcon('radio_button_on');
  static const homeIcon = AppIcon('test');
  static const analyticsIcon = AppIcon('analytics');
  static const burgerIcon = AppIcon('burger_ic');
  static const searchIcon = AppIcon('search_home');
  static const trendingSearchArrow = AppIcon('arrow_back');
  static const languageIcon = AppIcon('tick_icon');
  static const historySearch = AppIcon('search_history_icon');
  static const closeIconSearch = AppIcon('close_icon_search');
  static const crumpJoint = AppIcon('crump');
  static const emptyResultsSearch = AppIcon('empty_results_search');
  static const share_icon = AppIcon('share_');
  static const fontSizerIcon = AppIcon('font_sizer');
  static const contact_us_location = AppIcon('location_on');
  static const contact_us_address = AppIcon('email');
  static const contact_us_phone = AppIcon('call');
  static const contact_us_video = AppIcon('videocam');
  static const contact_us_email = AppIcon('alternate_email');
  static const contact_us_map = AppIcon('map');
  static const contact_us_external = AppIcon('external');
  static const noInternetConnection = AppIcon('no_connection');
  static const backArrowIcon = AppIcon('back_arrow');

}
