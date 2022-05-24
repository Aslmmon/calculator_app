
enum Categories {
  HOMEAR,
  HOMEEN,
  TODAYSAR,
  TODAYSEN,
  EYEWASHINGTONAR,
  EYEWASHINGTONEN,
  MEDIAAR,
  MEDIAEN,
  INFOGRAPHAR,
  INFOGRAPHEN,
  VIDEOSAR,
  VIDEOSENG,
  REPORTSAR,
  REPORTSEN,
  LANGUAGEAR,
  LANGUAGEEN,
  SINGLEPAGE,
  SEARCHRESULT,
  TEAMMEMBERSAR,
  TEAMMEMBERSEN,
  ABOUTSUSAR,
  ABOUTUSEN,
  CONTACTUSAR,
  CONTACTUSEN,
  NOINTERNET
}

extension CategoriesType on Categories {
  String get categoryId {
    switch (this) {
      case Categories.HOMEAR:
        return "10";
      case Categories.HOMEEN:
        return "1386";
      case Categories.TODAYSAR:
        return "9";
      case Categories.TODAYSEN:
        return "134";
      case Categories.EYEWASHINGTONAR:
        return "102";
      case Categories.EYEWASHINGTONEN:
        return "141";
      case Categories.MEDIAAR:
        return "66";
      case Categories.MEDIAEN:
        return "131";
      case Categories.INFOGRAPHAR:
        return "67";
      case Categories.INFOGRAPHEN:
        return "132";
      case Categories.VIDEOSAR:
        return "68";
      case Categories.VIDEOSENG:
        return "133";
      case Categories.REPORTSAR:
        return "105";
      case Categories.REPORTSEN:
        return "118";
      case Categories.LANGUAGEAR:
        return "4380";
      case Categories.LANGUAGEEN:
        return "4439";
      case Categories.SINGLEPAGE:
        return "-1";
      case Categories.SEARCHRESULT:
        return "-2";
      case Categories.TEAMMEMBERSAR:
        return "41";
      case Categories.TEAMMEMBERSEN:
        return "1223";
      case Categories.ABOUTSUSAR:
        return "86";
      case Categories.ABOUTUSEN:
        return "1378";
      case Categories.CONTACTUSAR:
        return "73";
      case Categories.CONTACTUSEN:
        return "1210";
      case Categories.NOINTERNET:
        return '-200';
      default:
        return '-3';
    }
  }
}
