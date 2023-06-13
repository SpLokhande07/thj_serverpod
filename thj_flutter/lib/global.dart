import 'dart:io';

class Global {
  static double height = 0;
  static double width = 0;
  static String googleServerClientId = Platform.isAndroid
      ? '220164212378-q4ja58hpmsml222th110ct5k18rhvuls.apps.googleusercontent.com'
      : Platform.isIOS
          ? "220164212378-ej6gjkvs3v5d32muctikn258v2vv88m5.apps.googleusercontent.com"
          : "220164212378-2v2is4dgvm1iaijg35virt0sjgvlfo4n.apps.googleusercontent.com";
}
