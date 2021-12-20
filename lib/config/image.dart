class Images {
  static const String TelkomselUiPath = "lib/assets/images";
  static const String Logo = "$TelkomselUiPath/logo.png";
  static const String MyTelkomsel = "$TelkomselUiPath/MyTelkomsel.svg";
  static const String SimpatiLogo = "$TelkomselUiPath/simpati_logo.png";
  static const String Person = "$TelkomselUiPath/person.svg";
  static const String Person2 = "$TelkomselUiPath/person2.svg";
  static const String TwitterLogo = "$TelkomselUiPath/twitter_logo.svg";
  static const String FacebookLogo = "$TelkomselUiPath/facebook_logo.svg";

  //MENU LOGO
  static const String internet = "$TelkomselUiPath/internet.png";
  static const String telpon = "$TelkomselUiPath/telpon.png";
  static const String sms = "$TelkomselUiPath/sms.png";
  static const String roaming = "$TelkomselUiPath/roaming.png";
  static const String hiburan = "$TelkomselUiPath/hiburan.png";
  static const String unggulan = "$TelkomselUiPath/unggulan.png";
  static const String tersimpan = "$TelkomselUiPath/tersimpan.png";
  static const String riwayat = "$TelkomselUiPath/riwayat.png";

  static final Images _instance = Images._internal();

  factory Images() {
    return _instance;
  }

  Images._internal();
}
